#include <stdio.h>
#include "000.h"

int fxtestdsp1( seltype_2**   p, seltype_1**   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		**p=**q OPRTN;
		p++;
		q++;
	}
	return 0;
}
	
int fxtestdsp_scl_1(  seltype_2** scl_p, seltype_1** scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		**scl_p=**scl_q OPRTN;
		scl_p++;
		scl_q++;
	}
	return 0;
}

