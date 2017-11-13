//
// Created by Shuchun on 17/11/13.
//

#ifndef PS_LR_SAMPLE_H
#define PS_LR_SAMPLE_H


#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <fstream>


namespace pslr{
    class Sample{
    public:
        explicit  Sample(int num_feature):num_feature_(num_feature){
            feature_.resize(num_feature);
        }
        explicit  Sample(std::vector<float>& feature,int label)
                :feature_(feature),label_(label){

        }
        virtual ~Sample(){

        }
        void SetLabel(int label){
            label_=label;
        }
        void SetFeature(const std::vector<float>& feature){
            feature_=feature;
        }
        std::pair<std::vector<float>,int> GetSample(){
            return std::make_pair(feature_,label_);
        };

        std::vector<float> GetFeature(){
            return feature_;
        }

        float GetFeature(int index){
            return feature_[index];
        }

        int GetLabel(){
            return label_;
        }

        std::string Debug(){
            auto str=std::to_string(label_);
            for(int i=0;i<(int)feature_.size();i++){
                if(feature_[i]){
                    str+=" "+std::to_string(i)+":"+std::to_string(feature_[i]);
                }
            }
            return str;
        }

    private:
        int num_feature_;
        std::vector<float> feature_;
        int label_;

    };
}




#endif //PS_LR_SAMPLE_H
