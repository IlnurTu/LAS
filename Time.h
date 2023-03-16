
#ifndef LASTEST_TIME_H
#define LASTEST_TIME_H

std::pair<double,double> getTimedRoadByTrajectory(std::vector<std::unique_ptr<LineSegment>>& ArrayOfLineSegment,liblas::Reader& reader,liblas::Writer& writer){
    double timeRead = 0,timeWrite = 0;
    if(ArrayOfLineSegment.empty())
        throw std::runtime_error("Array of line segment is empty");

    auto IntervalTreeOfLineSegments = IntervalTree(ArrayOfLineSegment);
    auto start = std::chrono::steady_clock::now();
    auto end = std::chrono::steady_clock::now();
    std::chrono::duration<double> seconds = end-start;



    for (int i = 0; i < reader.GetHeader().GetPointRecordsCount(); ++i) {

        start = std::chrono::steady_clock::now();

        reader.ReadNextPoint();
        Point Point = {reader.GetPoint().GetX(), reader.GetPoint().GetY()};

        end = std::chrono::steady_clock::now();
        seconds = end-start;
        timeRead += seconds.count();


        const auto& tmpArr = IntervalTreeOfLineSegments.find(reader.GetPoint().GetX());
        for (const auto &el: tmpArr) {
            if (el->isInside(Point)) {

                start = std::chrono::steady_clock::now();

                writer.WritePoint(reader.GetPoint());

                end = std::chrono::steady_clock::now();
                seconds = end-start;
                timeWrite += seconds.count();

                break;
            }
        }
    }
    return {timeRead,timeWrite};
}

#endif //LASTEST_TIME_H
