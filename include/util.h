//
// Created by Shuchun on 17/11/13.
//

#ifndef PS_LR_UTIL_H
#define PS_LR_UTIL_H

namespace  pslr{
    std::vector<std::string> Split(std::string line,char sparator);

    int toInt(const char* str);

    int toInt(const std::string& str);

    float toFloat(const char* str);

    float toFloat(const std::string& str);
}




#endif //PS_LR_UTIL_H
