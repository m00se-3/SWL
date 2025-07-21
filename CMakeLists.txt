cmake_minimum_required (VERSION 3.28)

project(
	"SWL"
	DESCRIPTION "Lua-based engine built with SWGTK." 
	HOMEPAGE_URL "https://github.com/m00se-3/SWL"
  VERSION 0.1
)

include("CPM.cmake")
include("cmake/Config.cmake")
include(CTest)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

# Add CCache, if available

if(CCACHE_PROGRAM)

  message("-- Enabling ccache.\n")
  set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE_PROGRAM})
  set(CPM_SOURCE_CACHE ${CMAKE_CURRENT_LIST_DIR}/.cache/CPM)
  
endif()

CPMAddPackage("gh:m00se-3/SWGTK#main")

File(GLOB example_scripts ${CMAKE_CURRENT_LIST_DIR}/examples/*.lua)

add_subdirectory("swl")
add_subdirectory("examples")