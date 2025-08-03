add_executable(swl2d)

target_compile_options(swl2d PRIVATE ${CompilerFlags})
target_link_options(swl2d PRIVATE ${LinkerFlags})

target_compile_features(swl2d PRIVATE cxx_std_23)

if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
    target_compile_definitions(swl2d PRIVATE _DEBUG)
endif()

target_compile_definitions(
    swl2d

    PRIVATE 

    SWL_ENGINE_LUA_FILE="${CMAKE_CURRENT_LIST_DIR}/engine.lua"
)

if(CLANG_TIDY_PROGRAM)

    set_property(TARGET swl2d PROPERTY CXX_CLANG_TIDY ${CLANG_TIDY_PROGRAM})

endif()

if(CPPCHECK_PROGRAM)

    set_target_properties(swl2d PROPERTIES CXX_CPPCHECK ${CPPCHECK_PROGRAM})

endif()

target_link_libraries(
        swl2d

        PRIVATE

        swgtk
)

target_sources(
        swl2d

        PUBLIC 

        FILE_SET HEADERS 
        BASE_DIRS ${CMAKE_CURRENT_LIST_DIR}

        FILES 

        PUBLIC 

        ${CMAKE_CURRENT_LIST_DIR}/common.hpp
        ${CMAKE_CURRENT_LIST_DIR}/LuaGame.hpp

        PRIVATE

        ${CMAKE_CURRENT_LIST_DIR}/swl2d.cpp
        ${CMAKE_CURRENT_LIST_DIR}/LuaGame.cpp
)

add_custom_command(
    TARGET swl2d POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy -t ${PROJECT_BINARY_DIR}/examples
    ${example_scripts}
    COMMAND_EXPAND_LISTS
)

install(
    TARGETS 

    swl2d
    SDL3-shared 
    SDL3_image-shared 
    SDL3_ttf-shared 
    freetype

    DESTINATION 

    ${CMAKE_INSTALL_BINDIR}
)
