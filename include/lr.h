//
// Created by Shuchun on 17/11/13.
//
#include <iostream>

#include <string>
#include <vector>
#include <sstream>
#include <fstream>

#include "sample.h"
#include "util.h"

namespace pslr{
    class LR{
    public:
        explicit LR(int num_feature,float learning_rate=0.001,float C_=1,int random_state=0);
        virtual ~LR(){
            if(kv_){
                std::cout<<"lr ended"<<std::endl;
                delete kv_;
            }
        }
        void SetKVWorker(ps::KVWorker<float>* kv);
        void Train(DataIter& iter,int num_iter);
        void Test(DataIter& iter,int num_iter);

        std::vector<float> GetWeight();

        ps::KVWorker<float>* GetWorker();

        bool SaveModel(std::string& filename);

        std::string Debug();

    private:
        void InitWeight_();

        int Predict_(std::vector<float> feature);

        float Sigmoid_(std::vector<float> feature);

        void PullWeight_();

        void PushGradient_(const std::vector<float>& grad);

        int num_feature_;

        float learning_rate_;

        float C_;

        int random_state_;

        std::vector<float> weight_;

        ps::KVWorker<float>* kv_;
    };
}




























