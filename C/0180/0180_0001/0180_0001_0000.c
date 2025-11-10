#include <stdio.h>
#include "000.h"

int fxtestdsp1( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[q[i]]=1;
	}
	return 0;
}
	
int fxtestdsp_scl_1(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[scl_q[i]]=1;
	}
	return 0;
}

