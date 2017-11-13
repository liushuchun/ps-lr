//
// Created by Shuchun on 17/11/13.
//

#include <algorithm>
#include <ctime>
#include <iostream>

#include <mutex>
#include <functional>
#include <random>
#include <string>
#include <time.h>
#include <unistd.h>
#include <memory>
#include <immintrin.h>


template <typename Val>
class KVServer{
public:
    KVServer(){
        using namespace std::placeholders;
        ps_server_=new ps::KVServer<float>(0);
        ps_server_->set_request_handle(std::bind(&KVServer::DataHanlde,this,_1,_2,_3));

        sync_mode_=!strcmp(ps::Environment::Get()->find("SYNC_MODE","1"));
        learning_rate_=pslr::toFloat(ps::Environment::Get()->find("LEARNING_RATE"));

        std::string mode=sync_mode_?"sync":"async";
        std::cout<<"Server mode:"<<mode<<std::endl;


    }

    ~KVServer(){
        if(ps_server_){
            std::cout<<"kvserver ended"<<std::endl;
            delete ps_server_;
        }
    }

private:
    void DataHanlde(const ps::KVMeta& req_meta,const ps::KVPairs<Val>& req_data,
                    ps::KVServer<Val>* server){
        int key=DeCodeKey(req_data.keys[0]);
        auto& weights=weights_[key];

        size_t n=req_data.keys.size();
        if(req_meta.push){
            CHECK_EQ(n,req_data.keys.size());
            if(weights.empty()){
                std::cout<<"Init weight"<<std::endl;
                weights.resize(n);
                for(int i=0;i<n;++i){
                    weights[i]=req_data.vals[i];
                }
                server->Response(req_meta);
            }else if(sync_mode_){
                auto& merged=merge_buf_[key];
                if(merged.vals.empty()){
                    merged.vals.resize(n,0);
                }

                for(int i=0;i<n;i++){
                    merged.vals[i]+=req_data.vals[i];
                }

                merged.request.push_back(req_meta);
                if(merged.request.size()==(size_t)ps::NumWorkers()){
                    //update the weight

                    for(size_t i=0;i<n;i++){
                        weights[i]-=learning_rate*req_datas.vals[i]/merged.request.size();
                    }

                    for(const auto& req:merged.request){
                        server->Response(req);
                    }

                    merged.request.clear();
                    merged.vals.clear();
                }
            }

        }
    }

    int DecodeKey(ps::Key key){
        auto kr=ps::Postoffice::Get()->GetServerKeyRanges()[ps::MyRank()];
        return key-kr.begin();
    }

    bool sync_mode_;
    float learning_rate_;

    struct MergeBuf{
        std::vector<ps::KVMeta> request;
        std::vector<Val> vals;
    };

    std::unordered_map<int,std::vector<Val>> weights_;

    std::unordered_map<int,MergeBuf> merge_buf_;

    ps::KVServer<float>* ps_server_;

};
