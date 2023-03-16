#include "LasSystem.h"



void getRoadByTrajectory(std::vector<std::unique_ptr<LineSegment>>& ArrayOfLineSegment,liblas::Reader& reader,liblas::Writer& writer){
    if(ArrayOfLineSegment.empty())
        throw std::runtime_error("Array of line segment is empty");

    auto IntervalTreeOfLineSegments = IntervalTree(ArrayOfLineSegment);

    for (int i = 0; i < reader.GetHeader().GetPointRecordsCount(); ++i) {
        reader.ReadNextPoint();
        Point Point = {reader.GetPoint().GetX(), reader.GetPoint().GetY()};
        const auto& tmpArr = IntervalTreeOfLineSegments.find(reader.GetPoint().GetX());
        for (const auto &el: tmpArr) {
            if (el->isInside(Point)) {
                writer.WritePoint(reader.GetPoint());
                break;
            }
        }
    }
}

