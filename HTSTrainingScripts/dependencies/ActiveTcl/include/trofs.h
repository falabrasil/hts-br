/*
 * trofs.h --
 */

#ifndef _TROFS
#define _TROFS

#ifdef _WIN64
#define __stat64 _stat64
#endif

#include <tcl.h>

#ifndef CONST86
#define CONST86
#endif

/*
 * Only the _Init function is exported.
 */

extern DLLEXPORT int	Trofs_Init(Tcl_Interp * interp);

#endif /* _TROFS */
