# nsfConfig.sh --
# 
# This shell script (for sh) is generated automatically by the Next
# Scripting configure script.  It will create shell variables for most
# of the configuration options discovered by the configure script.
# This script is intended to be included by the configure scripts for
# Next Scripting extensions so that they don't have to figure this all
# out for themselves.  This file does not duplicate information
# already provided by tclConfig.sh, so you may need to use that file
# in addition to this one.
#
# The information in this file is specific to a single platform.

# Version number.
NSF_VERSION='2.1'
NSF_PATCH_LEVEL='2.1.0'

# String to pass to compiles to pick up includes during build
# (i.e., assuming nothing has been installed)
NSF_BUILD_INCLUDE_DIR='/tmp/---warning-do-not-use----/nsf/generic'
NSF_BUILD_INCLUDE_SPEC="-I${NSF_BUILD_INCLUDE_DIR}"

# String to pass to compiles to pick up the nsf includes from their
# installed directory.
NSF_INCLUDE_DIR="/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/include"
NSF_INCLUDE_SPEC="-I${NSF_INCLUDE_DIR}"

# The name of the nsf library (may be either a .a file or a shared library):
NSF_LIB_FILE=libnsf2.1.0.so

# String to pass to linker to pick up the nsf library from its
# build directory.
NSF_BUILD_LIB_SPEC='-L/tmp/---warning-do-not-use----/nsf -lnsf2.1.0'

# String to pass to linker to pick up the nsf library from its
# installed directory.
NSF_LIB_SPEC='-L/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/nsf2.1.0 -lnsf2.1.0'

# The name of the NSF stub library (a .a file):
# NSF_STUB_LIB_FILE=libnsfstub2.1.0.a

# String to pass to linker to pick up the NSF stub library from its
# build directory.
NSF_BUILD_STUB_LIB_SPEC='-L/tmp/---warning-do-not-use----/nsf -lnsfstub2.1.0'

# String to pass to linker to pick up the NSF stub library from its
# installed directory.
NSF_STUB_LIB_SPEC='-L/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/nsf2.1.0 -lnsfstub2.1.0'

# Name of the NSF stub library with full path in build and install directory
NSF_BUILD_STUB_LIB_PATH='/tmp/---warning-do-not-use----/nsf/libnsfstub2.1.0.a'
NSF_STUB_LIB_PATH='/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/nsf2.1.0/libnsfstub2.1.0.a'

# Location of the top-level source directories from which nsf
# was built.  This is the directory that contains generic, unix, etc.
# If nsf was compiled in a different place than the directory
# containing the source files, this points to the location of the sources,
# not the location where nsf was compiled.
NSF_SRC_DIR='/tmp/---warning-do-not-use----/nsf'

# shared and unshared library suffix
NSF_SHARED_LIB_SUFFIX=2.1.0.so
NSF_UNSHARED_LIB_SUFFIX=2.1.0.a

# the shell in whose installation dirs the nsf package is installed
NSF_COMPATIBLE_TCLSH=/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/bin/tclsh8.6

