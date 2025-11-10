#include<stdio.h>
#include <complex.h>
#include"004.h"

#define NUM 10
#define NUM1 100

typedef union u1
{
	unsigned int uint_var __attribute__ ((aligned(128)));
	float float_var;
	double double_var __attribute__ ((aligned(256)));
} u1;

typedef union u2
{
	u1 union_u1;
	__attribute__ ((aligned(8)))signed long long int lli_var;
	int int_var;
	
} u2 __attribute__ ((packed));


__attribute__ ((aligned(2), packed)) struct st_1
{
	int int_var;
	char char_var[NUM];
	float float_var;
};
typedef struct st_1 st1;

struct st_2
{
	__attribute__ ((aligned(32))) short short_var;
	__attribute__ ((aligned(32))) int int_var;
	__attribute__ ((aligned(32))) char char_var[NUM];
	__attribute__ ((aligned(32), packed)) u1 union_u1;
} __attribute__ ((aligned(64)));
typedef struct st_2 st2;

typedef union u3
{
	__attribute__ ((aligned(128), packed))st2 st_st2; short short_var; double double_var;
} u3;


__attribute__ ((aligned(16), packed)) struct st_3
{
	st2 st_st2;
	__attribute__ ((aligned(16), packed)) double double_var; 
};
typedef struct st_3 st3;

__attribute__ ((aligned(16), packed)) struct st4
{
	int int_var;
	char char_var[NUM];
	float float_var;
	long long int lli_var __attribute__ ((aligned(32))); 
} st_st4[5]={[2].int_var=56, [2].char_var="test7", [2].float_var=-30.5};

__attribute__ ((aligned(1))) union u5 
{
	int int_var;
	__attribute__ ((aligned(8))) float _Complex complex_var;
} union_u5={.complex_var = 155.25f + 63.25fi};

typedef enum { false, true } __attribute__ ((packed)) bool;

int main()
{
	u1 union_u1[NUM];
	u2 union_u2;
	u3 union_u3;
	st1 st_st1;
	st2 st_st2;
	st3 st_st3;
	int int_var;
	float float_var, float_rt;
	long long int lli_var __attribute__ ((aligned(128))); 
	header("GNU ","__attribute__ packed");
	
	int_var = 6586;
	union_u1[3].uint_var = int_var;
	ichck(1, 6586, union_u1[3].uint_var, "test No.1-1 NG\n");
	ichck(1, 256, __alignof(union_u1[3]), "test No.1-2 NG\n");
	ichck(1, 128, __alignof(union_u1[3].uint_var), "test No.1-3 NG\n");
	ichck(1, 256, __alignof(union_u1[3].double_var), "test No.1-4 NG\n");
	ichck(1, 256, __alignof(union_u1), "test No.1-5 NG\n");
	
	union_u2.union_u1.uint_var = 5866;
	if(int_var < union_u2.union_u1.uint_var)
	{
		printf("\t test No.2-1 NG\n");
	}
	
	ichck(2, 256, __alignof(union_u2.union_u1), "test No.2-2 NG\n");
	ichck(2, 8, __alignof(union_u2.lli_var), "test No.2-3 NG\n");
	ichck(2, 256, __alignof(union_u2), "test No.2-4 NG\n");
	
	float_var = 2.35;
	st_st1.float_var = 16.125;
	float_rt = st_st1.float_var + float_var;
	fchck(3, 18.475, float_rt, 0.1, "test No.3-1 NG\n");
	ichck(3, 4, __alignof(st_st1), "test No.3-2 NG\n");
	ichck(3, __alignof(int), __alignof(st_st1.int_var), "test No.3-3 NG\n");
	ichck(3, __alignof(char), __alignof(st_st1.char_var), "test No.3-4 NG\n");
	
	strcpy(st_st2.char_var, "test No.4");
	schck(4, "test No.4", st_st2.char_var, "test No.4-1 NG\n");
	ichck(4, 32, __alignof(st_st2.union_u1), "test No.4-2 NG\n");
	ichck(4, 32, __alignof(st_st2.int_var), "test No.4-3 NG\n");
	ichck(4, 64, __alignof(st_st2), "test No.4-4 NG\n");
	
	st_st2.short_var = 253;
	union_u3.st_st2 = st_st2;
	sichck(5, 253, union_u3.st_st2.short_var, "test No.5-1 NG\n");
	schck(5, "test No.4", union_u3.st_st2.char_var, "test No.5-2 NG\n");
	ichck(5, 128, __alignof(union_u3), "test No.5-3 NG\n");
	ichck(5, 128, __alignof(union_u3.st_st2), "test No.5-4 NG\n");
	
	st_st3.double_var = 365.2 + 3.0;
	dchck(6, 365.0, st_st3.double_var, 0.1, "test No.6-1 NG\n");
	ichck(6, 64, __alignof(st_st3.st_st2), "test No.6-2 NG\n");
	ichck(6, 64, __alignof(st_st3), "test No.6-3 NG\n");
	
	lli_var = 759886;
	st_st4[2].lli_var = lli_var;
	lichck(7, 759886, st_st4[2].lli_var, "test No.7-1 NG\n");
	ichck(7, 56, st_st4[2].int_var, "test No.7-1 NG\n");
	ichck(7, 32, __alignof(st_st4[2].lli_var), "test No.7-2 NG\n");
	ichck(7, 32, __alignof(st_st4[2]), "test No.7-3 NG\n");
	ichck(7, 16, __alignof(st_st4), "test No.7-4 NG\n");
	
	fchck(8, 155.25, crealf(union_u5.complex_var), 0.1, "test No.8-1 NG\n");
	fchck(8, 63.25, cimag(union_u5.complex_var), 0.1, "test No.8-2 NG\n");
	ichck(8, 8, __alignof(union_u5.complex_var), "test No.8-3 NG\n");
	ichck(8, 1, __alignof(union_u5), "test No.8-3 NG\n");
	
	header("GNU ","__attribute__ packed");

}
