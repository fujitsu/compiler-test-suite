#include <stdio.h>
#include "000.h"
	
long fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[i]=p[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[i]=scl_p[i] OPRTN;
	}
	return 0;
}

long fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[i]=p[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[i]=scl_p[i] OPRTN;
	}
	return 0;
}

	
long fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*3]=p[i*3] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*3]=scl_p[i*3] OPRTN;
	}
	return 0;
}

long fxtestdsp4( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*n]=p[i*n] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_4(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*n]=scl_p[i*n] OPRTN;
	}
	return 0;
}

long fxtestdsp5( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		p[100-i]=p[100-i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_5(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		scl_p[100-i]=scl_p[100-i] OPRTN;
	}
	return 0;
}

long fxtestdsp6( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(p+i)=*(p+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_6(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(scl_p+i)=*(scl_p+i) OPRTN;
	}
	return 0;
}

long fxtestdsp7( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(p+i)=*(p+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_7(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(scl_p+i)=*(scl_p+i) OPRTN;
	}
	return 0;
}

	
long fxtestdsp8( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*3))=*(p+(i*3)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_8(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*3))=*(scl_p+(i*3)) OPRTN;
	}
	return 0;
}

long fxtestdsp9( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*n))=*(p+(i*n)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_9(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*n))=*(scl_p+(i*n)) OPRTN;
	}
	return 0;
}

long fxtestdsp10( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(p+(100-i))=*(p+(100-i)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_10(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(scl_p+(100-i))=*(scl_p+(100-i)) OPRTN;
	}
	return 0;
}

long fxtestdsp11( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*p OPRTN;
		p+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_11(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_p OPRTN;
		scl_p+=4;
	}
	return 0;
}

long fxtestdsp12( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*p OPRTN;
		p+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_12(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_p OPRTN;
		scl_p+=n;
	}
	return 0;
}

long fxtestdsp13( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	p_base = p;
	for( i=1; i<100; i++){
		*p=*p OPRTN;
		p = p_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_13(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	scl_p_base = scl_p;
	for( i=1; i<100; i++){
		*scl_p=*scl_p OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
	}
	return 0;
}



