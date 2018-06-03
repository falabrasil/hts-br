# zlibtclConfig.sh --
#
# This shell script (for sh) is generated automatically by zlibtcl's
# configure script.  It will create shell variables for most of
# the configuration options discovered by the configure script.
# This script is intended to be included by the configure scripts
# for zlibtcl extensions so that they don't have to figure this all
# out for themselves.  This file does not duplicate information
# already provided by tclConfig.sh, so you may need to use that
# file in addition to this one.
#
# The information in this file is specific to a single platform.

# zlibtcl's version number.
zlibtcl_VERSION='1.2.8.1'
zlibtcl_MAJOR_VERSION=''
zlibtcl_MINOR_VERSION=''
zlibtcl_RELEASE_LEVEL=''

# The name of the zlibtcl library (may be either a .a file or a shared library):
zlibtcl_LIB_FILE=libzlibtcl1.2.8.1.so

# String to pass to linker to pick up the zlibtcl library from its
# build directory.
zlibtcl_BUILD_LIB_SPEC='-L/tmp/---warning-do-not-use----/Img/zlib -lzlibtcl1.2.8.1'

# String to pass to linker to pick up the zlibtcl library from its
# installed directory.
zlibtcl_LIB_SPEC='-L/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/Img1.4.6 -lzlibtcl1.2.8.1'

# The name of the zlibtcl stub library (a .a file):
zlibtcl_STUB_LIB_FILE=libzlibtclstub1.2.8.1.a

# String to pass to linker to pick up the zlibtcl stub library from its
# build directory.
zlibtcl_BUILD_STUB_LIB_SPEC='-L/tmp/---warning-do-not-use----/Img/zlib -lzlibtclstub1.2.8.1'

# String to pass to linker to pick up the zlibtcl stub library from its
# installed directory.
zlibtcl_STUB_LIB_SPEC='-L/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/Img1.4.6 -lzlibtclstub1.2.8.1'

# String to pass to linker to pick up the zlibtcl stub library from its
# build directory.
zlibtcl_BUILD_STUB_LIB_PATH='/tmp/---warning-do-not-use----/Img/zlib/libzlibtclstub1.2.8.1.a'

# String to pass to linker to pick up the zlibtcl stub library from its
# installed directory.
zlibtcl_STUB_LIB_PATH='/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/Img1.4.6/libzlibtclstub1.2.8.1.a'

# Location of the top-level source directories from which zlibtcl
# was built.  This is the directory that contains generic, unix, etc.
# If zlibtcl was compiled in a different place than the directory
# containing the source files, this points to the location of the
# sources, not the location where zlibtcl was compiled. This can
# be relative to the build directory.

zlibtcl_SRC_DIR='/tmp/---warning-do-not-use----/Img/zlib'
