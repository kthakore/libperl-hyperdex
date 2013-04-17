#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <hyperclient.h>

#ifndef aTHX_
#define aTHX_
#endif

MODULE = Hyperdex PACKAGE = Hyperdex
PROTOTYPES: DISABLE

void
run ( )
	CODE:
		warn("SD");



