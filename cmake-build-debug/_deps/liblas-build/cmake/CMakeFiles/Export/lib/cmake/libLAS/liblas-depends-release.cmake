#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "las" for configuration "Release"
set_property(TARGET las APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(las PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/opt/homebrew/lib/libtiff.dylib;/opt/homebrew/lib/libgeotiff.dylib;Boost::program_options;Boost::thread;Boost::system;Boost::iostreams;Boost::filesystem"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblas.2.4.0.dylib"
  IMPORTED_SONAME_RELEASE "liblas.3.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS las )
list(APPEND _IMPORT_CHECK_FILES_FOR_las "${_IMPORT_PREFIX}/lib/liblas.2.4.0.dylib" )

# Import target "las_c" for configuration "Release"
set_property(TARGET las_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(las_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "las"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblas_c.2.4.0.dylib"
  IMPORTED_SONAME_RELEASE "liblas_c.3.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS las_c )
list(APPEND _IMPORT_CHECK_FILES_FOR_las_c "${_IMPORT_PREFIX}/lib/liblas_c.2.4.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
