#include <stdio.h>
#include "000.h"

long fxtestdsp1( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(p+i)=*(q+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_1(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(scl_p+i)=*(scl_q+i) OPRTN;
	}
	return 0;
}

long fxtestdsp2( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(p+i)=*(q+i) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_2(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(scl_p+i)=*(scl_q+i) OPRTN;
	}
	return 0;
}

	
long fxtestdsp3( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*3))=*(q+(i*3)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_3(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*3))=*(scl_q+(i*3)) OPRTN;
	}
	return 0;
}

long fxtestdsp4( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*n))=*(q+(i*n)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_4(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*n))=*(scl_q+(i*n)) OPRTN;
	}
	return 0;
}

long fxtestdsp5( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(p+(100-i))=*(q+(100-i)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_5(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(scl_p+(100-i))=*(scl_q+(100-i)) OPRTN;
	}
	return 0;
}

long fxtestdsp6( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*q OPRTN;
		p+=4;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_6(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p+=4;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp7( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*p=*q OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_7(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}

long fxtestdsp8( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	seltype_1* q_base;
	p_base = p;
	q_base = q;
	for( i=1; i<100; i++){
		*p=*q OPRTN;
		p = p_base + (100-i);
		q = q_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_8(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	seltype_1* scl_q_base;
	scl_p_base = scl_p;
	scl_q_base = scl_q;
	for( i=1; i<100; i++){
		*scl_p=*scl_q OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
		scl_q = (seltype_1 *)(scl_q_base + (100-i));
	}
	return 0;
}

long fxtestdsp9( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(p+(i*3))=*(q+(i*3)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_9(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(scl_p+(i*3))=*(scl_q+(i*3)) OPRTN;
	}
	return 0;
}

long fxtestdsp10( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(p+(i*n))=*(q+(i*n)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_10(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(scl_p+(i*n))=*(scl_q+(i*n)) OPRTN;
	}
	return 0;
}

	
long fxtestdsp11( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(p+(i*n))=*(q+(i*n)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_11(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(scl_p+(i*n))=*(scl_q+(i*n)) OPRTN;
	}
	return 0;
}

long fxtestdsp12( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=4){
		*(p+(100-i))=*(q+(100-i)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_12(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=4){
		*(scl_p+(100-i))=*(scl_q+(100-i)) OPRTN;
	}
	return 0;
}

long fxtestdsp13( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(p+(i*3))=*(q+(i*3)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_13(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(scl_p+(i*3))=*(scl_q+(i*3)) OPRTN;
	}
	return 0;
}

long fxtestdsp14( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=n){
		*(p+(100-i))=*(q+(100-i)) OPRTN;
	}
	return 0;
}
	
long fxtestdsp_scl_14(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i+=n){
		*(scl_p+(100-i))=*(scl_q+(100-i)) OPRTN;
	}
	return 0;
}

	
	
long fxtestdsp15( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(p+i)=*(q+i) OPRTN;
		p+=4;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_15(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(scl_p+i)=*(scl_q+i) OPRTN;
		scl_p+=4;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp16( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(p+i)=*(q+i) OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_16(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(scl_p+i)=*(scl_q+i) OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}

	
long fxtestdsp17( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(p+i)=*(q+i) OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_17(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=4){
		*(scl_p+i)=*(scl_q+i) OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}

long fxtestdsp18( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	seltype_1* q_base;
	p_base = p;
	q_base = q;
	for( i=1; i<100; i+=4){
		*(p+i)=*(q+i) OPRTN;
		p = p_base + (100-i);
		q = q_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_18(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	seltype_1* scl_q_base;
	scl_p_base = scl_p;
	scl_q_base = scl_q;
	for( i=1; i<100; i+=4){
		*(scl_p+i)=*(scl_q+i) OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
		scl_q = (seltype_1 *)(scl_q_base + (100-i));
	}
	return 0;
}

long fxtestdsp19( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(p+i)=*(q+i) OPRTN;
		p+=4;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_19(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i+=n){
		*(scl_p+i)=*(scl_q+i) OPRTN;
		scl_p+=4;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp20( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	seltype_1* q_base;
	p_base = p;
	q_base = q;
	for( i=1; i<100; i+=n){
		*(p+i)=*(q+i) OPRTN;
		p = p_base + (100-i);
		q = q_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_20(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	seltype_1* scl_q_base;
	scl_p_base = scl_p;
	scl_q_base = scl_q;
	for( i=1; i<100; i+=n){
		*(scl_p+i)=*(scl_q+i) OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
		scl_q = (seltype_1 *)(scl_q_base + (100-i));
	}
	return 0;
}

	
	
long fxtestdsp21( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*3))=*(q+(i*3)) OPRTN;
		p+=4;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_21(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*3))=*(scl_q+(i*3)) OPRTN;
		scl_p+=4;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp22( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*n))=*(q+(i*n)) OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_22(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*n))=*(scl_q+(i*n)) OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}

	
long fxtestdsp23( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*3))=*(q+(i*3)) OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_23(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*3))=*(scl_q+(i*3)) OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}

long fxtestdsp24( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	seltype_1* q_base;
	p_base = p;
	q_base = q;
	for( i=1; i<100; i++){
		*(p+(i*3))=*(q+(i*3)) OPRTN;
		p = p_base + (100-i);
		q = q_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_24(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	seltype_1* scl_q_base;
	scl_p_base = scl_p;
	scl_q_base = scl_q;
	for( i=1; i<100; i++){
		*(scl_p+(i*3))=*(scl_q+(i*3)) OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
		scl_q = (seltype_1 *)(scl_q_base + (100-i));
	}
	return 0;
}

long fxtestdsp25( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(p+(i*n))=*(q+(i*n)) OPRTN;
		p+=4;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_25(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=0; i<100; i++){
		*(scl_p+(i*n))=*(scl_q+(i*n)) OPRTN;
		scl_p+=4;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp26( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	seltype_2* p_base;
	seltype_1* q_base;
	p_base = p;
	q_base = q;
	for( i=1; i<100; i++){
		*(p+(i*n))=*(q+(i*n)) OPRTN;
		p = p_base + (100-i);
		q = q_base + (100-i);
	}
	return 0;
}
	
long fxtestdsp_scl_26(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	seltype_2* scl_p_base;
	seltype_1* scl_q_base;
	scl_p_base = scl_p;
	scl_q_base = scl_q;
	for( i=1; i<100; i++){
		*(scl_p+(i*n))=*(scl_q+(i*n)) OPRTN;
		scl_p = (seltype_2 *)(scl_p_base + (100-i));
		scl_q = (seltype_1 *)(scl_q_base + (100-i));
	}
	return 0;
}

long fxtestdsp27( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(p+(100-i))=*(q+(100-i)) OPRTN;
		p+=4;
		q+=4;
	}
	return 0;
}
	
long fxtestdsp_scl_27(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(scl_p+(100-i))=*(scl_q+(100-i)) OPRTN;
		scl_p+=4;
		scl_q+=4;
	}
	return 0;
}

long fxtestdsp28( seltype_2*   p, seltype_1*   q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(p+(100-i))=*(q+(100-i)) OPRTN;
		p+=n;
		q+=n;
	}
	return 0;
}
	
long fxtestdsp_scl_28(  seltype_2* scl_p, seltype_1* scl_q, seltype_distance n )
{
	long i;
	for( i=1; i<100; i++){
		*(scl_p+(100-i))=*(scl_q+(100-i)) OPRTN;
		scl_p+=n;
		scl_q+=n;
	}
	return 0;
}



