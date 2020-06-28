cmake_minimum_required(VERSION 3.10)

if (CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
    project(CustomThirdparty)

    include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/Utils.cmake)

    enable_testing()

    set(THIRD_PARTY_ROOT ${CMAKE_CURRENT_SOURCE_DIR})

    list(APPEND CMAKE_MODULE_PATH ${THIRD_PARTY_ROOT}/cmake)

    add_subdirectory_avoid_diamond(gtest_main GTest)

    find_package(CustomThirdparty REQUIRED COMPONENTS SimpleLogger SimpleArgsParser)
endif()
