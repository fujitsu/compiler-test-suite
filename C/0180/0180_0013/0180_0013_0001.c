#include <stdio.h>
#include "000.h"

long fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=4){
		p[i]=q[j] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=4){
		scl_p[i]=scl_q[j] OPRTN;
	}
	return 0;
}

long fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=n){
		p[i]=q[j] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=n){
		scl_p[i]=scl_q[j] OPRTN;
	}
	return 0;
}

	
long fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i]=q[i*3] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i]=scl_q[i*3] OPRTN;
	}
	return 0;
}

long fxtestdsp4( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i]=q[i*n] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_4(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i]=scl_q[i*n] OPRTN;
	}
	return 0;
}

long fxtestdsp5( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		p[i]=q[100-i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_5(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		scl_p[i]=scl_q[100-i] OPRTN;
	}
	return 0;
}

long fxtestdsp6( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=4){
		*(p+i)=*(q+j) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_6(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=4){
		*(scl_p+i)=*(scl_q+j) OPRTN;
	}
	return 0;
}

long fxtestdsp7( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=n){
		*(p+i)=*(q+j) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_7(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	long j;
	for( i=0,j=0; i<100; i++, j+=n){
		*(scl_p+i)=*(scl_q+j) OPRTN;
	}
	return 0;
}

	
long fxtestdsp8( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+i)=*(q+(i*3)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_8(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+i)=*(scl_q+(i*3)) OPRTN;
	}
	return 0;
}

long fxtestdsp9( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+i)=*(q+(i*n)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_9(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+i)=*(scl_q+(i*n)) OPRTN;
	}
	return 0;
}

long fxtestdsp10( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(p+i)=*(q+(100-i)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_10(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(scl_p+i)=*(scl_q+(100-i)) OPRTN;
	}
	return 0;
}

long fxtestdsp11( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*q OPRTN;
		p++;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_11(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p++;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp12( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*q OPRTN;
		p++;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_12(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p++;
		scl_q+=n;
	}
	return 0;
}

long fxtestdsp13( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_1* q_base;
	q_base = q;
	for( i=1; i<100; i++){
		*p=*q OPRTN;
		p++;
		q = q_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_13(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_1* scl_q_base;
	scl_q_base = scl_q;
	for( i=1; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p++;
		scl_q = (seltype_1 *)(scl_q_base + (100-i));
	}
	return 0;
}



