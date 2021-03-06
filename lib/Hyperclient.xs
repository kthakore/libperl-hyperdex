#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"


#include <hyperdex.h>
#include <hyperclient.h>

#ifndef aTHX_
#define aTHX_
#endif


void objDESTROY(SV *bag, void (* callback)(struct hyperclient*object))
{
    if( sv_isobject(bag) && (SvTYPE(SvRV(bag)) == SVt_PVMG) )
    {
        void** pointers  = (void**)INT2PTR(void *, SvIV((SV *)SvRV( bag )));
        void* object     = pointers[0];
        
        if(PERL_GET_CONTEXT == pointers[1] )
        {
            pointers[0] = NULL;
            if(object)
                callback(object);
            safefree(pointers);
        }
    }
}



MODULE = Hyperclient PACKAGE = Hyperclient   PREFIX = hc_

struct hyperclient* 
hc_new ( CLASS, coordinator, port )
	const char* CLASS
	const char* coordinator
	uint16_t port
	CODE:
		struct hyperclient* hc = hyperclient_create( coordinator, port );
		RETVAL = hc;
	OUTPUT:
		RETVAL


int
hc_add_space( hc, description )
	struct hyperclient* hc
	const char* description
	CODE:
		RETVAL=hyperclient_add_space(hc, description);
	OUTPUT:
		RETVAL

int
hc_rm_space( hc, space )
	struct hyperclient* hc
	const char* space
	CODE:
		RETVAL=hyperclient_rm_space(hc, space);
	OUTPUT:
		RETVAL


void
hc_DESTROY ( bag )
	SV* bag
	CODE:
		objDESTROY(bag, hyperclient_destroy);
