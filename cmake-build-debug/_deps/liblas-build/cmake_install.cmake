# Install script for directory: /Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/liblas/doc" TYPE FILE FILES
    "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src/AUTHORS"
    "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src/INSTALL"
    "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src/LICENSE.txt"
    "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src/README.txt"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/src/cmake_install.cmake")
  include("/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/apps/cmake_install.cmake")
  include("/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/test/cmake_install.cmake")
  include("/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/cmake/cmake_install.cmake")

endif()

