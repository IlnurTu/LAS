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

void GetInfoPointsToTxt(std::ofstream &ofstreamData, std::ofstream& header, liblas::Reader &reader) {
    std::string string;
    string = "№ " + std::string("X") + " Y" + " Z" + " Intensity"  + " Return Number" + " Number of Returns" + " Scan direction flag" +
            " Edge of Flight Line" + " Classification" + " Scan Angle Rank" + " UserData" + " Point Source Id" +
             " GPS Time" + " Red" + " Green" + " Blue" + "\n";
    header<<string;
    for (int i = 0; i < 1000000; ++i) {
        reader.ReadNextPoint();
        auto X = reader.GetPoint().GetX();
        auto Y = reader.GetPoint().GetY();
        auto Z = reader.GetPoint().GetZ();
        auto Intensity = reader.GetPoint().GetIntensity();
        auto ReturnNumber = reader.GetPoint().GetReturnNumber();
        auto NumberOfReturns = reader.GetPoint().GetNumberOfReturns();
        auto ScanDirectionFlag = reader.GetPoint().GetScanDirection();
        auto EdgeOfFlightLine = reader.GetPoint().GetFlightLineEdge();
        auto Classification = reader.GetPoint().GetClassification();
        auto ScanAngleRank = reader.GetPoint().GetScanAngleRank();
        auto UserData = reader.GetPoint().GetUserData();
        auto PointSourceID = reader.GetPoint().GetPointSourceID();
        auto GPSTime = reader.GetPoint().GetTime();
        auto Red = reader.GetPoint().GetColor().GetRed();
        auto Green = reader.GetPoint().GetColor().GetGreen();
        auto Blue = reader.GetPoint().GetColor().GetBlue();
        string.clear();
        auto str = [](auto val) {
            return std::to_string(val);
        };
        string = std::to_string(i) + "," + str(X) + "," + str(Y) + "," + str(Z) +
                 "," + str(Intensity) + "," + str(ReturnNumber) +
                 "," + str(NumberOfReturns) + "," +
                 str(ScanDirectionFlag) + "," + str(EdgeOfFlightLine) +
                 "," + str(Classification.GetClass()) + "," +
                 str(ScanAngleRank) + "," + str(UserData) + "," +
                 str(PointSourceID) + "," + str(GPSTime) + "," + str(Red) +
                 "," + str(Green) + "," + str(Blue) + "\n";
        ofstreamData << string;
    }
}


