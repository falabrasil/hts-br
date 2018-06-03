set __dir__ $dir 
foreach index [concat \
		   [glob -nocomplain [file join $dir * pkgIndex.tcl]] \
		   [glob -nocomplain [file join $dir * * pkgIndex.tcl]] \
		   [glob -nocomplain [file join $dir * * * pkgIndex.tcl]]] {
  set dir [file dirname $index]
  source $index
} 
set dir $__dir__ 
unset __dir__ 



package ifneeded nsf 2.1.0 [list load [file join $dir libnsf2.1.0.so] nsf]


