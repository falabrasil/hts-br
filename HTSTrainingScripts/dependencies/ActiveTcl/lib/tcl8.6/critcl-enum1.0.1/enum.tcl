## -*- tcl -*-
# # ## ### ##### ######## ############# #####################
# Pragmas for MetaData Scanner.
# n/a

# CriTcl Utility Commands. Generation of functions handling conversion
# from and to a C enum. Not a full Tcl_ObjType. Based on
# Tcl_GetIndexFromObj() instead.

package provide critcl::enum 1.0.1

# # ## ### ##### ######## ############# #####################
## Requirements.

package require Tcl              8.4    ; # Min supported version.
package require critcl           3.1.11 ; # make, include -- dict portability
package require critcl::literals 1.1    ; # String pool for conversion to Tcl.

namespace eval ::critcl::enum {}

# # ## ### ##### ######## ############# #####################
## API: Generate the declaration and implementation files for the enum.

proc ::critcl::enum::def {name dict} {
    # Arguments are 
    # - the C name of the enumeration, and
    # - dict of strings to convert. Key is the symbolic C name, value
    #   is the string. Numeric C value is in the order of the strings in
    #   the dict, treating it as list for that case.
    #
    # dict: C symbolic name -> Tcl string (Tcl symbolic name).

    if {![dict size $dict]} {
	return -code error -errorcode {CRITCL ENUM DEF INVALID} \
	    "Expected an enum definition, got empty string"
    }

    critcl::literals::def ${name}_pool $dict

    # <name>_pool_names = C enum of symbolic names, and implied numeric values.
    # <name>_pool.h     = Header
    # <name>_pool ( interp, code ) => Tcl_Obj* :: up-conversion C to Tcl.

    # Exporting:
    # Header    <name>.h
    # Function  <name>_ToObj      (interp, code) -> obj
    # Function  <name>_GetFromObj (interp, obj, flags, &code) -> Tcl code
    # Enum type <name>_names

    dict for {sym str} $dict {
	lappend table "\t\t\"$str\","
    }

    lappend map @NAME@   $name
    lappend map @TABLE@  \n[join $table \n]
    lappend map @TSIZE@  [llength $table]
    lappend map @TSIZE1@ [expr {1 + [llength $table]}]

    critcl::include [critcl::make ${name}.h \n[critcl::at::here!][string map $map {
	#ifndef @NAME@_HEADER
	#define @NAME@_HEADER
	#include <@NAME@_pool.h>

	extern int
	@NAME@_GetFromObj (Tcl_Interp*   interp,
			   Tcl_Obj*      obj,
			   int           flags,
			   int*          literal);

	#define @NAME@_ToObj(i,l) (@NAME@_pool(i,l))
	#endif
    }]]

    # Create second function, down-conversion Tcl to C.

    critcl::ccode [critcl::at::here!][string map $map {
	extern int
	@NAME@_GetFromObj (Tcl_Interp*   interp,
			   Tcl_Obj*      obj,
			   int           flags,
			   int*          literal )
	{
	    static const char* strings[@TSIZE1@] = {@TABLE@
		NULL
	    };

	    return Tcl_GetIndexFromObj (interp, obj, strings,
					"@NAME@",
					flags, literal);
	}
    }]


    # V. Define convenient argument- and result-type definitions
    #    wrapping the de- and encoder functions for use by cprocs.

    critcl::argtype $name \n[critcl::at::here!][string map $map {
	if (@NAME@_GetFromObj (interp, @@, TCL_EXACT, &@A) != TCL_OK) return TCL_ERROR;
    }] int int

    critcl::argtype ${name}-prefix \n[critcl::at::here!][string map $map {
	if (@NAME@_GetFromObj (interp, @@, 0, &@A) != TCL_OK) return TCL_ERROR;
    }] int int

    # Use the underlying literal pool directly.
    critcl::resulttype $name = ${name}_pool
    return
}

# # ## ### ##### ######## ############# #####################
## Export API

namespace eval ::critcl::enum {
    namespace export def
    catch { namespace ensemble create }
}

namespace eval ::critcl {
    namespace export enum
    catch { namespace ensemble create }
}

# # ## ### ##### ######## ############# #####################
## Ready
return
