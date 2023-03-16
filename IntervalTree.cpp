#include "IntervalTree.h"

bool CompareLeftSegment::operator()(LineSegment* lhs, LineSegment* rhs) {
    return lhs->getMinX()<rhs->getMinX();
}


bool CompareRightSegment::operator()(LineSegment* lhs, LineSegment* rhs) {
    return lhs->getMaxX()>rhs->getMaxX();
}

IntervalTree::IntervalTree(std::vector<std::unique_ptr<LineSegment>> &segments) {
    std::vector<LineSegment*> tmpArray;
    tmpArray.reserve(segments.size());
    for(int i = 0;i<segments.size();++i)
        tmpArray.emplace_back(segments[i].get());
    root = buildTree(std::move(tmpArray));
}

IntervalTree::~IntervalTree() {
    destroy(root);
}

void IntervalTree::destroy(Node *leaf) {
    if (leaf != nullptr) {
        destroy(leaf->left);
        destroy(leaf->right);
        delete leaf;
    }
}

Node *IntervalTree::buildTree(std::vector<LineSegment*> segments) {
    if (segments.empty())
        return nullptr;

    Node *result = new Node();

    std::sort(segments.begin(), segments.end(), [](const auto& a,const auto& b) {
        return a->getMaxX() < b->getMaxX();
    });

    double x_mid = segments[segments.size() / 2]->getMaxX();

    std::vector<LineSegment*> left_child;
    std::vector<LineSegment*> right_child;
    std::multiset<LineSegment*, CompareRightSegment> right_segment;
    std::multiset<LineSegment*, CompareLeftSegment> left_segment;

    for (const auto& segment: segments) {
        auto MaxDisplacement = segment->getMaxX() + segment->getLeftDisplacement();
        auto MinDisplacement = segment->getMinX() - segment->getLeftDisplacement();

        if (MaxDisplacement < x_mid)
            left_child.emplace_back(segment);
        if (MinDisplacement > x_mid)
            right_child.emplace_back(segment);
        if (MinDisplacement <= x_mid && MaxDisplacement >= x_mid) {
            right_segment.emplace(segment);
            left_segment.emplace(segment);
        }
    }

    result->left = buildTree(std::move(left_child));
    result->right = buildTree(std::move(right_child));
    result->x_mid = x_mid;
    result->left_segments = std::move(left_segment);
    result->right_segments = std::move(right_segment);
    return result;
}

void IntervalTree::find(Node *node, double x) {
    if (node == nullptr)
        return;
    if (x < node->x_mid)
        find(node->left, x);
    if (x > node->x_mid)
        find(node->right, x);
    if (x < node->x_mid) {
        for (const auto &segment: node->left_segments) {
            auto LeftDisplacement = segment->getMinX() - segment->getLeftDisplacement();
            if (LeftDisplacement <= x) {
                FoundIntervals.emplace_back(segment);
            } else break;
        }
    }
    if (x > node->x_mid) {
        for (const auto &segment: node->right_segments) {
            auto RightDisplacement = segment->getMaxX() + segment->getLeftDisplacement();
            if (RightDisplacement >= x) {
                FoundIntervals.emplace_back(segment);
            } else break;
        }
    }
}

const std::vector<LineSegment*>& IntervalTree::find(double x) {
    FoundIntervals.clear();
    find(root, x);
    return FoundIntervals;
}

size_t IntervalTree::size(Node *leaf) const {
    if (leaf == nullptr)
        return 0;
    size_t res = leaf->left_segments.size();
    res += size(leaf->right);
    res += size(leaf->left);
    return res;
}
