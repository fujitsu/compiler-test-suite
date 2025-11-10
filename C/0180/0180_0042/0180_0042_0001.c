#include <stdio.h>
#include "000.h"

long fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[i]=q[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[i]=scl_q[i] OPRTN;
	}
	return 0;
}

long fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[i]=q[i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[i]=scl_q[i] OPRTN;
	}
	return 0;
}

	
long fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*3]=q[i*3] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*3]=scl_q[i*3] OPRTN;
	}
	return 0;
}

long fxtestdsp4( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[i*n]=q[i*n] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_4(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[i*n]=scl_q[i*n] OPRTN;
	}
	return 0;
}

long fxtestdsp5( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		p[100-i]=q[100-i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_5(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		scl_p[100-i]=scl_q[100-i] OPRTN;
	}
	return 0;
}

long fxtestdsp6( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[i*3]=q[i*3] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_6(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[i*3]=scl_q[i*3] OPRTN;
	}
	return 0;
}

long fxtestdsp7( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[i*n]=q[i*n] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_7(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[i*n]=scl_q[i*n] OPRTN;
	}
	return 0;
}

	
long fxtestdsp8( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[i*n]=q[i*n] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_8(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[i*n]=scl_q[i*n] OPRTN;
	}
	return 0;
}

long fxtestdsp9( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=4){
		p[100-i]=q[100-i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_9(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=4){
		scl_p[100-i]=scl_q[100-i] OPRTN;
	}
	return 0;
}

long fxtestdsp10( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[i*3]=q[i*3] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_10(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[i*3]=scl_q[i*3] OPRTN;
	}
	return 0;
}

long fxtestdsp11( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=n){
		p[100-i]=q[100-i] OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_11(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=n){
		scl_p[100-i]=scl_q[100-i] OPRTN;
	}
	return 0;
}

	
	


