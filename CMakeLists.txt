cmake_minimum_required(VERSION 3.23)
project(LASTest)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_BUILD_TYPE Release)


include(FetchContent)

FetchContent_Declare(
        liblas
        GIT_REPOSITORY https://github.com/libLAS/libLAS.git
)

FetchContent_MakeAvailable(liblas)

FetchContent_Declare(googletest
        GIT_REPOSITORY https://github.com/google/googletest
        GIT_TAG release-1.10.0
        )

FetchContent_MakeAvailable(googletest)

include_directories(
        cmake-build-debug/_deps/googletest-src/googletest/include
        cmake-build-debug/_deps/liblas-src/include

)

add_executable(LASTest main.cpp FileSystem.cpp LineSegment.cpp LasSystem.h LasSystem.cpp IntervalTree.cpp IntervalTree.h Time.h)

target_link_libraries(LASTest gtest las)



