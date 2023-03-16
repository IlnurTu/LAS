#ifndef LASTEST_LINESEGMENT_H
#define LASTEST_LINESEGMENT_H
#include <algorithm>
#include <vector>
#include <cmath>

struct Point {
    double X;
    double Y;
};

class LineSegment {
    static const double LeftDisplacement;
    static const double RightDisplacement;
    Point FirstPoint;
    Point SecondPoint;
    double A;
    double B;
    double C;
    double MinX;
    double MaxX;
    double MinY;
    double MaxY;
public:
    LineSegment(Point _FirstPoint, Point _SecondPoint);

    const Point &getFirstPoint() const;

    const Point &getSecondPoint() const;

    double getA() const;

    double getB() const;

    double getC() const;

    double getLeftDisplacement() const;

    double getRightDisplacement() const;

    double getPointDeviation(const Point &Point) const;

    double doVectorMultiplicationPointAndLineSegment(const Point &Point) const;

    bool isInside(const Point &Point) const;

    double getMinX() const;

    double getMinY() const;

    double getMaxX() const;

    double getMaxY() const;

};

std::vector<std::unique_ptr<LineSegment>> getLineSegments(const std::vector<Point> &arrayPoints);

#endif
