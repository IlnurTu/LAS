#include "FileSystem.h"

std::ifstream openLasFileToRead(std::filesystem::path path) {
    return std::ifstream(path, std::ios::in | std::ios::binary);
}

std::ofstream openLasFileToWrite(std::filesystem::path path) {
    return std::ofstream(path, std::ios::out | std::ios::binary);
}

std::ifstream openCSVFileToRead(std::filesystem::path path) {
    return std::ifstream(path);
}

Point getPointFromString(const std::string &str) {
    std::string str1;
    std::string str2;
    int i = 0;
    for (; i < str.length(); ++i) {
        if (str[i] == ';') {
            ++i;
            break;
        }
        str1 += str[i];
    }
    for (; i < str.length(); ++i) {
        str2 += str[i];
    }
    auto num1 = std::stod(str1);
    auto num2 = std::stod(str2);
    return {num1, num2};
}



std::vector<Point> deserializeCSV(std::ifstream &ifs) {
    std::string string;
    std::vector<Point> array;
    while (ifs) {
        ifs >> string;
        array.emplace_back(getPointFromString(string));
    }
    return array;
}


