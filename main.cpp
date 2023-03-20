#include "liblas/iterator.hpp"
#include "FileSystem.h"
#include "LineSegment.h"
#include "LasSystem.h"
#include <ctime>
#include <functional>
#include <chrono>

double const LineSegment::RightDisplacement = 7;
double const LineSegment::LeftDisplacement = 14;

int main() {

    srand(time(0));

    auto csvIfstream = openCSVFileToRead("/Users/ilnurtuhvatulin/Downloads/0-63.csv");

    auto ArrayOfLineSegments = getLineSegments(deserializeCSV(csvIfstream));

    liblas::ReaderFactory ReaderFactory;

    auto SourceLasFile = openLasFileToRead("/Users/ilnurtuhvatulin/s3/lasers/14data.las");

    liblas::Reader Reader = ReaderFactory.CreateWithStream(SourceLasFile);

    liblas::Header const &Header = Reader.GetHeader();

    auto txtFileData = std::ofstream("data.txt");
    auto txtFileHeader = std::ofstream ("header.txt");

    GetInfoPointsToTxt(txtFileData,txtFileHeader,Reader);

//    auto LasOfstream = openLasFileToWrite("/Users/ilnurtuhvatulin/s3/lasers/A-104_KM_82_KM_121/14road.las");
//
//    liblas::Writer Writer(LasOfstream, Header);
//
//    getRoadByTrajectory(ArrayOfLineSegments,Reader,Writer);

    return 0;
}

