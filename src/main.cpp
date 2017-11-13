#include <iostream>
#include <mutex>
#include <condition_variable>
#include <chrono>
#include <thread>
#include "ps/ps.h"

#include "lr.h"
#include "util.h"
#include "data_iter.h"
#include "server.cpp"

const int KSyncMode = -1;


void RunServer(){
    if(!ps::IsServer()){
        return;
    }


    auto server=new pslr::KVServer<float>();
    ps::RegisterExitCallback([server](){delete server;});
}


void RunWorker(){
    if(!ps::IsWorker()){
        return;
    }


    std::string root=ps::Environment::Get()->find("DATA_DIR");
    int num_feature=pslr::toInt(ps::Environment::Get()->find("NUM_FEATURE"));

    int rank=ps::MyRank();
    ps::KVWorker<float>* kv=new ps::KVWorker<float>(0);
    pslr::LR lr=pslr::LR(num_feature);
    lr.SetKVWorker(kv);

    if(rank==0){
        auto vals=lr.GetWeight();
        std::vector<ps::Key> keys(vals.size());
        for(size_t i=0;i<keys.size();++i){
            keys[i]=i;
        }

        kv->Wait(kv->Push(keys,vals));
    }

    ps::Postoffice::Get()->Barrier(ps::KWorkerGroup);

    std::cout<<"Worker["<< rank<<"]:start working ..."<<std::endl;
    int num_iteration=pslr::toInt(ps::Environment::Get()->find("NUM_ITERATION"));
    int batch_size=pslr::toInt(ps::Environment::Get()->find("BATCH_SIZE"));
    int test_interval=pslr::toInt(ps::Environment::Get()->find("TEST_INTERVAL"));


    for(int i=0;i<num_iteration;i++){
        std::string filename=root+"/train/part-00"+std::to_string(rank+1);
        pslr::DataIter iter(filename,num_feature);
        lr.Train(iter,batch_size);

        if(rank==0 and (i+1)%test_interval==0){
            std::string filename=root+"/test/part-001";
            pslr::DataIter test_iter(filename,num_feature);
            lr.Test(test_iter,i+1);
        }
    }

    std::string modelfile=root+"/models/part-00"+std::to_string(rank+1);
    lr.SaveModel(modelfile);


}




int main() {
    StartServer();

    ps::Start();
    RunWorker();

    ps::Finalize();


    return 0;
}



















