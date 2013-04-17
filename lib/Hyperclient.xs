#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"


#include <hyperdex.h>
#include <hyperclient.h>

#ifndef aTHX_
#define aTHX_
#endif


void objDESTROY(SV *bag, void (* callback)(void *object))
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
hc_new ( coordinator, port )
	const char* coordinator
	uint16_t port
	PREINIT:
		const char* CLASS="Hyperclient";
	CODE:
		struct hyperclient* hc = hyperclient_client( coordinator, port );
		RETVAL = hc;
	OUTPUT:
		RETVAL


void
hc_DESTROY ( bag )
	SV* bag
	CODE:
		objDESTROY(bag, hyperclient_destroy);
