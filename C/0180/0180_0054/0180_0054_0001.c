#include <stdio.h>
#include "000.h"

long fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=4, j++){
		p[i]=q[j] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=4, j++){
		scl_p[i]=scl_q[j] OPRTN;
	}
	return 0;
}

long fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=n, j++){
		p[i]=q[j] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=n, j++){
		scl_p[i]=scl_q[j] OPRTN;
	}
	return 0;
}

	
long fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*3]=q[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*3]=scl_q[i] OPRTN;
	}
	return 0;
}

long fxtestdsp4( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*n]=q[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_4(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*n]=scl_q[i] OPRTN;
	}
	return 0;
}

long fxtestdsp5( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		p[100-i]=q[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_5(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		scl_p[100-i]=scl_q[i] OPRTN;
	}
	return 0;
}

long fxtestdsp6( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=4, j++){
		*(p+i)=*(q+j) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_6(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=4, j++){
		*(scl_p+i)=*(scl_q+j) OPRTN;
	}
	return 0;
}

long fxtestdsp7( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=n, j++){
		*(p+i)=*(q+j) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_7(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i+=n, j++){
		*(scl_p+i)=*(scl_q+j) OPRTN;
	}
	return 0;
}

	
long fxtestdsp8( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*3))=*(q+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_8(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*3))=*(scl_q+i) OPRTN;
	}
	return 0;
}

long fxtestdsp9( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*n))=*(q+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_9(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*n))=*(scl_q+i) OPRTN;
	}
	return 0;
}

long fxtestdsp10( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(p+(100-i))=*(q+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_10(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(scl_p+(100-i))=*(scl_q+i) OPRTN;
	}
	return 0;
}

long fxtestdsp11( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*(q+i) OPRTN;
		p+=4;
		q++;
	}
	return 0;
}
	
long fxtestdsp_scl_11(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*(scl_q+i) OPRTN;
		scl_p+=4;
		scl_q++;
	}
	return 0;
}

long fxtestdsp12( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*(q+i) OPRTN;
		p+=n;
		q++;
	}
	return 0;
}
	
long fxtestdsp_scl_12(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*(scl_q+i) OPRTN;
		scl_p+=n;
		scl_q++;
	}
	return 0;
}

long fxtestdsp13( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	p_base = p;
	for( i=1; i<100; i++){
		*p=*(q+i) OPRTN;
		p = p_base + (100-i);
		q++;
	}
	return 0;
}
	
long fxtestdsp_scl_13(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	scl_p_base = scl_p;
	for( i=1; i<100; i++){
		*scl_p=*(scl_q+i) OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
		scl_q++;
	}
	return 0;
}



