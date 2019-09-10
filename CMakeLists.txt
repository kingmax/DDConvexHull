cmake_minimum_required(VERSION 3.1)
project(DDConvexHull)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cgcmake/modules)

set(SOURCE_FILES
	"DDConvexHullCmd.h"
	"DDConvexHullNode.h"
	"DDConvexHullUtils.h"
	"DDConvexHullCmd.cpp"
	"DDConvexHullNode.cpp"
	"DDConvexHullPlugin.cpp"
	"DDConvexHullUtils.cpp"
	"StanHull/hull.h"
	"StanHull/wavefront.h"
	"StanHull/hull.cpp"
	"StanHull/stanhull.cpp"
	"StanHull/wavefront.cpp"
)

find_package(Maya REQUIRED)

add_library(DDConvexHull SHARED ${SOURCE_FILES})
target_link_libraries(DDConvexHull PRIVATE Maya::Maya)
target_include_directories(DDConvexHull PRIVATE Maya::Maya)
MAYA_PLUGIN(DDConvexHull)