# tclxmlConfig.sh --
# 
# This shell script (for sh) is generated automatically by Tclxml's
# configure script.  It will create shell variables for most of
# the configuration options discovered by the configure script.
# This script is intended to be included by the configure scripts
# for Tclxml extensions so that they don't have to figure this all
# out for themselves.  This file does not duplicate information
# already provided by tclConfig.sh, so you may need to use that
# file in addition to this one.
#
# The information in this file is specific to a single platform.

# Tclxml's version number.
Tclxml_VERSION='3.2'

# The name of the Tclxml library (may be either a .a file or a shared library):
Tclxml_LIB_FILE='libTclxml3.2.so'

# String to pass to linker to pick up the Tclxml library from its
# build directory.
Tclxml_BUILD_LIB_SPEC='-L/tmp/---warning-do-not-use----/tclxml -lTclxml3.2'

# String to pass to linker to pick up the Tclxml library from its
# installed directory.
Tclxml_LIB_SPEC='-L/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/Tclxml3.2 -lTclxml3.2'

# The name of the Tclxml stub library (a .a file):
Tclxml_STUB_LIB_FILE='libTclxmlstub3.2.a'

# String to pass to linker to pick up the Tclxml stub library from its
# build directory.
Tclxml_BUILD_STUB_LIB_SPEC='-L/tmp/---warning-do-not-use----/tclxml -lTclxmlstub3.2'

# String to pass to linker to pick up the Tclxml stub library from its
# installed directory.
Tclxml_STUB_LIB_SPEC='-L/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/Tclxml3.2 -lTclxmlstub3.2'

# String to pass to linker to pick up the Tclxml stub library from its
# build directory.
Tclxml_BUILD_STUB_LIB_PATH='/tmp/---warning-do-not-use----/tclxml/'

# String to pass to linker to pick up the Tclxml stub library from its
# installed directory.
Tclxml_STUB_LIB_PATH='/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/lib/Tclxml3.2/'

# String to pass to the compiler so that an extension can find
# installed header.
Tclxml_INCLUDE_SPEC='-I/home/ericson/Downloads/1_Projects_on_GIT/CURICA_FRAMEWORK/TrainingScripts/HTSTrainingScripts/dependencies/newActiveTcl/include'

# Location of the top-level source directories from which [incr Tcl]
# was built.  This is the directory that contains generic, unix, etc.
# If [incr Tcl] was compiled in a different place than the directory
# containing the source files, this points to the location of the sources,
# not the location where [incr Tcl] was compiled.
Tclxml_SRC_DIR='.'
