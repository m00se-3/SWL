# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/CppProjects/SWL/.cache/CPM/swgtk/4dee")
  file(MAKE_DIRECTORY "C:/CppProjects/SWL/.cache/CPM/swgtk/4dee")
endif()
file(MAKE_DIRECTORY
  "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-build"
  "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix"
  "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix/tmp"
  "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix/src/swgtk-populate-stamp"
  "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix/src"
  "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix/src/swgtk-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix/src/swgtk-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/CppProjects/SWL/build/x64-debug/_deps/swgtk-subbuild/swgtk-populate-prefix/src/swgtk-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
