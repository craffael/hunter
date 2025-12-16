# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    alglib
    VERSION
    3.18.0-p0
    URL
    "https://github.com/craffael/alglib/archive/v3.18.0-p0.tar.gz"
    SHA1
    035b5076aad878c03dc9c2cdaf24d92c8dbb8c22
)

hunter_add_version(
    PACKAGE_NAME
    alglib
    VERSION
    3.18.0-p1
    URL
    "https://github.com/craffael/alglib/archive/v3.18.0-p1.tar.gz"
    SHA1
    e1ed6d7e0b46f2027e27da89407da26f1878db88
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(alglib)
hunter_download(PACKAGE_NAME alglib)
