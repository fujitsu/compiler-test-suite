#include <stdio.h>
#include "000.h"
	
int fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=3){
		p[i]=q[i] OPRTN;
	}
	return 0;
}
	
int fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=3){
		scl_p[i]=scl_q[i] OPRTN;
	}
	return 0;
}

int fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*3]=q[i*3] OPRTN;
	}
	return 0;
}
	
int fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*3]=scl_q[i*3] OPRTN;
	}
	return 0;
}

int fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*q OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
int fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}


