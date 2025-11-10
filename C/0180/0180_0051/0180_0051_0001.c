#include <stdio.h>
#include "000.h"

long fxtestdsp1( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[q[i]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_1(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[scl_q[i]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp2( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[q[i]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_2(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[scl_q[i]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp3( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[q[i]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_3(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[scl_q[i]]=1 OPRTN;
	}
	return 0;
}

	
long fxtestdsp4( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[q[i*3]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_4(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[scl_q[i*3]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp5( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		p[q[i*n]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_5(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		scl_p[scl_q[i*n]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp6( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		p[q[100-i]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_6(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		scl_p[scl_q[100-i]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp7( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[q[i*3]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_7(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[scl_q[i*3]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp8( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[q[i*n]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_8(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[scl_q[i*n]]=1 OPRTN;
	}
	return 0;
}

	
long fxtestdsp9( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		p[q[i*n]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_9(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		scl_p[scl_q[i*n]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp10( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=4){
		p[q[100-i]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_10(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=4){
		scl_p[scl_q[100-i]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp11( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		p[q[i*3]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_11(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		scl_p[scl_q[i*3]]=1 OPRTN;
	}
	return 0;
}

long fxtestdsp12( seltype_2*   p, subscript_type*   q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=n){
		p[q[100-i]]=1 OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_12(  seltype_2* scl_p, subscript_type* scl_q, seltype_2*   in_r, subscript_type*   in_s, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=n){
		scl_p[scl_q[100-i]]=1 OPRTN;
	}
	return 0;
}

	
	


