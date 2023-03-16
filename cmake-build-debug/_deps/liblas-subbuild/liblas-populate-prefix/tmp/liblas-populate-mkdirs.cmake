# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src"
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build"
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-subbuild/liblas-populate-prefix"
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-subbuild/liblas-populate-prefix/tmp"
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-subbuild/liblas-populate-prefix/src/liblas-populate-stamp"
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-subbuild/liblas-populate-prefix/src"
  "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-subbuild/liblas-populate-prefix/src/liblas-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-subbuild/liblas-populate-prefix/src/liblas-populate-stamp/${subDir}")
endforeach()
