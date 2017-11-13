//
// Created by Shuchun on 17/11/13.
//

#include "util.h"
#include <iostream>

namespace pslr {

    std::vector<std::string> Split(std::string line, char sparator) {
        std::vector<std::string> ret;

        int start = 0;
        std::size_t pos = line.find(sparator, start);
        while (pos != std::string::npos) {
            ret.push_back(line.substr(start, pos));
            start = pos + 1;
            pos = line.find(sparator, start);
        }
        ret.push_back(line.substr(start));
        return ret;
    }

    int toInt(const char* str) {
        int flag = 1, ret = 0;
        const char* p = str;

        if (*p == '-') {
            ++p;
            flag = -1;
        } else if (*p == '+') {
            ++p;
        }

        while (*p) {
            ret = ret * 10 + (*p - '0');
            ++p;
        }
        return flag * ret;
    }

    int toInt(const std::string& str) {
        return toInt(str.c_str());
    }

    float toFloat(const char* str) {
        float integer = 0, decimal = 0;
        float base = 1;
        const char* p = str;

        while (*p) {
            if (*p == '.') {
                base = 0.1;
                ++p;
                continue;
            }
            if (base >= 1.0) {
                integer = integer * 10 + (*p - '0');
            } else {
                decimal += base * (*p - '0');
                base *= 0.1;
            }
            ++p;
        }

        return integer + decimal;
    }

    float toFloat(const std::string& str) {
        return toFloat(str.c_str());
    }

} // namespace distlr
