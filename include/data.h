//
// Created by Shuchun on 17/11/13.
//

#ifndef PS_LR_DATA_H
#define PS_LR_DATA_H
#include <string>
#include <vector>
#include <sstream>
#include <fstream>

#include "sample.h"
#include "util.h"

namespace pslr{

    class DataIter{
    public:
        explicit DataIter(std::string filename,int num_feature):
                filename_(filename),num_feature_(num_feature),offset_(0),round_end_(false){
            std::ifstream input(filename_.c_str());
            std::string line,buf;
            std::vector<float> feature;
            samples_.clear();

            while(std::getline(input,line)){
                std::istringstream in(line);
                in>>buf;
                int label= toInt(buf)==1?1:0;
                feature=std::vector<float>(num_feature_,0);
                while(in>>buf){
                    auto ss=Split(buf,':');
                    feature[toInt(ss[0]-1)]=toFloat(ss[1]);
                }
                samples_.push_back(Sample(feature,label));
                std::cout<<samples_.back().Debug()<<std::endl;
            }

        }
        virtual ~DataIter(){

        }
        std::vector<Sample> NextBatch(int batch_size=100){
            if(batch_size<0){
                batch_size=(int)samples_.size();
            }

        std::vector<Sample> batch;
        for(auto i=0;i<batch_size;++i){
            batch.push_back(samples_[offset_]);
            ++offset_;
            if(offset_==(int)samples_.size()){
                offset_=0;
                round_end_=true;
            }
        }
            return batch;
        }

        bool HashNext(){
            return !round_end_;
        }
    private:
        std::string filename_;
        int num_feature_;
        int offset_;
        bool round_end_;
        std::vector<Sample> samples_;
    };
}




























#endif //PS_LR_DATA_H
