# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    occt
    VERSION
    7.4.0
    URL
    "https://github.com/craffael/OCCT/archive/hunter-7.4.0.tar.gz"
    SHA1
    68ec85a4742be5913c73abdccef3856ef8cd0709
)

hunter_cmake_args(
  occt
  CMAKE_ARGS
    BUILD_MODULE_Draw=Off
    BUILD_DOC_Overview=Off
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(occt)
hunter_download(PACKAGE_NAME occt)
