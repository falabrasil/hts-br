#!/bin/bash

make distclean

./configure --with-hts-search-path=$(pwd)/dependencies/HTS/bin \
            --with-hts-engine-search-path=$(pwd)/dependencies/HTS_ENGINE/bin \
            --with-sptk-search-path=$(pwd)/dependencies/SPTK/bin \
            --with-tcl-search-path=$(pwd)/dependencies/ActiveTcl/bin


ln -s $(pwd)"/scripts" /etc/perl/scripts
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/dependencies/ActiveTcl/lib

make data; make voice; tail -F log
