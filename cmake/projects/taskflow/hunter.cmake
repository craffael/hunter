# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)
include(hunter_configuration_types)

hunter_add_version(
    PACKAGE_NAME
    taskflow
    VERSION
    3.0.0
    URL
    #"https://github.com/taskflow/taskflow/archive/v3.0.0.tar.gz"
    "https://github.com/craffael/taskflow/archive/a08358081057d2ae7ed500a783c064bba64f6664.tar.gz"
    SHA1
    #2f14c813038c42c512756ac2287508a28c042304
    e81d1b398734f29cb1f07e59fd177d1a1e6148b8
)

hunter_cmake_args(
    taskflow
    CMAKE_ARGS
        TF_BUILD_EXAMPLES=OFF
        TF_BUILD_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(taskflow)
hunter_configuration_types(foo CONFIGURATION_TYPES Release) # Taskflow is header only
hunter_download(PACKAGE_NAME taskflow)
