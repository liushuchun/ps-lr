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
        ps_server_->

    }
private:
    void DataHanlde(const ps::KVMeta& req_meta,const ps::KVPairs<Val>& req_data,
                    ps::KVServer<Val>* server){
        int key=DeCodeKey(req_data.keys[0]);
        auto& weights=weights_[key];

        size_t n=req_data.keys.size();
        if(req_meta.push){

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
