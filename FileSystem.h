#ifndef LASTEST_FILESYSTEM_H
#define LASTEST_FILESYSTEM_H

#include <fstream>
#include <filesystem>
#include "LineSegment.h"
#include <array>
#include "liblas/factory.hpp"
#include <string>

struct PointXYZ {
    double x, y, z;

    bool operator==(PointXYZ r) {
        if (x == r.x && y == r.y && z == r.z)
            return true;
        return false;
    }
};

std::ifstream openLasFileToRead(std::filesystem::path path);

std::ofstream openLasFileToWrite(std::filesystem::path path);

std::ifstream openCSVFileToRead(std::filesystem::path path);

Point getPointFromString(const std::string &str);

std::vector<Point> deserializeCSV(std::ifstream &ifs);

//std::vector <PointXYZ> deserializeCSV_XYZ(std::ifstream& ifs){
//    std::array<double,16> array;
//
//    std::string s;
//
//    std::getline(ifs,s);
//
//    std::vector<PointXYZ> result;
//
//    while(!ifs.eof()){
//
//        for(int i = 0;i<16;++i){
//            ifs>>array[i];
//        }
//
//        PointXYZ tmp = {array[13],array[14],array[15]};
//
//        if(result.size() != 0 && result[result.size()-1] == tmp)
//            continue;
//
//        result.push_back(tmp);
//    }
//}
void GetInfoPointsToTxt(std::ofstream &ofstreamData, std::ofstream &header, liblas::Reader &reader);

#endif
