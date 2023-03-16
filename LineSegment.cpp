#include "LineSegment.h"


LineSegment::LineSegment(Point _FirstPoint, Point _SecondPoint) : FirstPoint(_FirstPoint), SecondPoint(_SecondPoint) {
    double A = SecondPoint.Y - FirstPoint.Y;
    double B = -(SecondPoint.X - FirstPoint.X);
    double C = -FirstPoint.X * (SecondPoint.Y - FirstPoint.Y) + FirstPoint.Y * (SecondPoint.X - FirstPoint.X);
    double k = sqrt(A * A + B * B);
    this->A = A / k;
    this->B = B / k;
    this->C = C / k;
    this->MinX = std::min(FirstPoint.X,SecondPoint.X);
    this->MaxX = std::max(FirstPoint.X,SecondPoint.X);
    this->MinY = std::min(FirstPoint.Y,SecondPoint.Y);
    this->MaxY = std::max(FirstPoint.Y,SecondPoint.Y);
}

const Point &LineSegment::getFirstPoint() const {
    return FirstPoint;
}

const Point &LineSegment::getSecondPoint() const {
    return SecondPoint;
}

double LineSegment::getA() const {
    return A;
}

double LineSegment::getB() const {
    return B;
}

double LineSegment::getC() const {
    return C;
}

double LineSegment::getLeftDisplacement() const {
    return LeftDisplacement;
}

double LineSegment::getRightDisplacement() const {
    return RightDisplacement;
}

double LineSegment::getPointDeviation(const Point &Point) const {
    double ans = A * Point.X + B * Point.Y + C;
    return abs(ans);
}

double LineSegment::doVectorMultiplicationPointAndLineSegment(const Point &Point) const {
    double ans = (SecondPoint.X - FirstPoint.X) * (Point.Y - FirstPoint.Y) -
                 (Point.X - FirstPoint.X) * (SecondPoint.Y - FirstPoint.Y);
    return ans;
}

bool LineSegment::isInside(const Point &Point) const {
    auto MinY =
            (std::min(FirstPoint.Y, SecondPoint.Y) - LeftDisplacement);
    auto MaxY =
            (std::max(FirstPoint.Y, SecondPoint.Y) + LeftDisplacement);
    if(Point.Y < MinY || Point.Y > MaxY)
        return false;

    auto PointDeviation = getPointDeviation(Point);

    auto ResOfMultiply = doVectorMultiplicationPointAndLineSegment(Point);

    if (ResOfMultiply > 0 && PointDeviation <= LeftDisplacement ||
        ResOfMultiply < 0 && PointDeviation <= RightDisplacement)
        return true;

    return false;
}

std::vector<std::unique_ptr<LineSegment>> getLineSegments(const std::vector<Point> &arrayPoints) {
    std::vector<std::unique_ptr<LineSegment>> array;
    for (int i = 0; i < arrayPoints.size() - 1; ++i) {
        array.emplace_back(std::make_unique<LineSegment>(LineSegment(arrayPoints[i], arrayPoints[i + 1])));
    }
    return array;
}

double LineSegment::getMaxX() const {
    return MaxX;
}

double LineSegment::getMaxY() const {
    return MaxY;
}

double LineSegment::getMinX() const {
    return MinX;
}

double LineSegment::getMinY() const {
    return MinY;
}