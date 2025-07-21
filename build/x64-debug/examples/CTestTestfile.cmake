# CMake generated Testfile for 
# Source directory: C:/CppProjects/SWL/examples
# Build directory: C:/CppProjects/SWL/build/x64-debug/examples
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[text_lua]=] "C:/CppProjects/SWL/build/x64-debug/swl2d.exe" "--title" "Lua Text Example" "C:/CppProjects/SWL/examples/Text.lua")
set_tests_properties([=[text_lua]=] PROPERTIES  _BACKTRACE_TRIPLES "C:/CppProjects/SWL/examples/CMakeLists.txt;3;add_test;C:/CppProjects/SWL/examples/CMakeLists.txt;0;")
add_test([=[multi_lua]=] "C:/CppProjects/SWL/build/x64-debug/swl2d.exe" "--title" "Lua Modules Example" "C:/CppProjects/SWL/examples/MultiRoot.lua")
set_tests_properties([=[multi_lua]=] PROPERTIES  _BACKTRACE_TRIPLES "C:/CppProjects/SWL/examples/CMakeLists.txt;4;add_test;C:/CppProjects/SWL/examples/CMakeLists.txt;0;")
