#include "LineSegment.h"
#include <set>

#ifndef LASTEST_INTERVALTREE_H
#define LASTEST_INTERVALTREE_H

struct CompareLeftSegment {
    bool operator()(LineSegment *lhs, LineSegment *rhs);
};

struct CompareRightSegment {
    bool operator()(LineSegment *lhs, LineSegment *rhs);
};

struct Node {
    Node *left;
    Node *right;
    double x_mid;
    std::multiset<LineSegment *, CompareLeftSegment> left_segments;
    std::multiset<LineSegment *, CompareRightSegment> right_segments;
};

class IntervalTree {
private:
    Node *root;

    std::vector<LineSegment*> FoundIntervals;

    Node *buildTree(std::vector<LineSegment *>);

    void destroy(Node *leaf);

    void find(Node *node, double x);

    size_t size(Node *leaf) const;

public:

    IntervalTree(std::vector<std::unique_ptr<LineSegment>> &segments);

    ~IntervalTree();

    const std::vector<LineSegment*>& find(double x);

    size_t size() const {
        return size(root);
    }

};


#endif //LASTEST_INTERVALTREE_H
