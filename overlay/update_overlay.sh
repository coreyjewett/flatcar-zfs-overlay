#!/usr/bin/env bash

# remove all the old files
find sys-fs -type f -exec rm {} \;

# grab the tarball and extract the relevant packages
curl -L 'https://github.com/gentoo/gentoo/tarball/master' | tar xz --strip-components 1 \
    $(find sys-fs -maxdepth 1 -mindepth 1 -exec echo \*/{} \;)
