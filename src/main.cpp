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


void RunWorker(){
    if(!ps::IsWorker()){
        return;
    }


    std::string root=ps::Environment::Get()->find("DATA_DIR");
    int num_feature=pslr::toInt(ps::Environment::Get()->find("NUM_FEATURE"));

    int rank=ps::MyRank();
    ps::KVWorker<float>* kv=new ps::KVWorker<float>(0);



}




int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}



















