# Install script for directory: /Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-src/apps

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/lasinfo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasinfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasinfo")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasinfo")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasinfo")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasinfo")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/las2las")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/txt2las")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/txt2las" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/txt2las")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas_c.3.dylib" "liblas_c.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/txt2las")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/txt2las")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/txt2las")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/las2col")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2col" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2col")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas_c.3.dylib" "liblas_c.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2col")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2col")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2col")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/las2pg")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2pg" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2pg")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas_c.3.dylib" "liblas_c.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2pg")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2pg")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2pg")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/las2las")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2las")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/lasblock")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasblock" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasblock")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasblock")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasblock")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/lasblock")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/ts2las")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ts2las" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ts2las")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ts2las")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ts2las")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ts2las")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/las2txt")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2txt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2txt")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/bin/Release/liblas.3.dylib" "liblas.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2txt")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2txt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/las2txt")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/Users/ilnurtuhvatulin/labs/LASTest/cmake-build-debug/_deps/liblas-build/apps/liblas.pc")
endif()

