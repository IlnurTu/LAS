#ifndef LASTEST_LASSYSTEM_H
#define LASTEST_LASSYSTEM_H

#include "IntervalTree.h"
#include "liblas/factory.hpp"
#include <boost/asio.hpp>
#include <boost/thread.hpp>

void getRoadByTrajectory(std::vector<std::unique_ptr<LineSegment>>& ArrayOfLineSegment,liblas::Reader& reader,liblas::Writer& writer);

void getAsyncRoadByTrajectory(boost::asio::thread_pool& tread_pool,std::vector<std::unique_ptr<LineSegment>>& ArrayOfLineSegment,liblas::Reader& reader,liblas::Writer& writer);


#endif //LASTEST_LASSYSTEM_H
