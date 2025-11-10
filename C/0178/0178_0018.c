#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <complex.h>
#include "004.h"

#define NUM0 10

typedef struct st1
{
	int int_var;
	double double_var;
	char char_var[NUM0];
} st1;

typedef union u1
{
	unsigned int uint_var;
	double double_var;
} u1;

_Bool bool_var;
int int_gvar;
void *void_pvar;
u1 *union_u1_1, *union_u1_2;
unsigned long long int lli_tmp;
void *pi;

__attribute__((malloc, nothrow)) static st1* test1(int int_var)
{
  st1 *st_pst = &(st1) { .int_var = int_var };
  ichck(1, 65, st_pst->int_var, "test1-1 NG\n");
  return st_pst;
}

 extern _Bool* test2() __attribute((malloc, unused));
_Bool* test2()
{
	_Bool *bool_pvar = &bool_var;
	return &bool_var;
}

__attribute__((malloc, nonnull)) signed char* test3(char *char_pvar)
{
	return char_pvar;
}

inline __attribute__((malloc, always_inline)) static double* test4()
{
	double *double_pvar1, *double_pvar2;
	double_pvar1 = double_pvar2 = (double*) malloc(10*sizeof(double));
	double_pvar1[3] = 12835.10;
	return double_pvar1;
}

__attribute__((malloc, section("test5"))) float _Complex al_test5(float float_var)
{
	float _Complex complex_var;
	complex_var = float_var + 1583.2fi;
	return  complex_var;
}

extern void test6() __attribute((malloc, const)); 
void test6()
{
	
}

extern signed short* test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7(int) __attribute__((malloc,visibility("default")));

short short_var;
short short_alvar;
signed short* test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7(int int_var)
{
	short_alvar = int_var - 35;
	return &short_alvar;
}

__attribute((malloc, used)) float* test8()
{
	return void_pvar;
}

__attribute__((malloc, deprecated)) static unsigned long long int* test9(int int_var, short short_var)
{
	lli_tmp = int_var + short_var;
	return &lli_tmp;
}

double* test11(int int_var, float float_var, st1 *st_st1)
{
	st_st1->double_var = int_var + float_var;
	return &st_st1->double_var;
}

__attribute__((malloc, alias("test11"))) extern double* al_test11(int, float, st1*);

__attribute((malloc, pure)) static u1* test12(int int_var)
{
	union_u1_1 = (u1*) malloc(sizeof(u1));
	union_u1_1->uint_var = int_var;
	union_u1_2 = union_u1_1;
	return union_u1_2;
}

__attribute__((malloc, warn_unused_result)) static _Bool test13()
{
	return true;
}

__attribute__((malloc, unused)) int* test14(double double_var)
{
	int *int_pvar;
	int_pvar = &int_gvar;
	*int_pvar = double_var;
	return &int_gvar;
}


__attribute__((malloc)) void* func1()
{
	void *a;
	a = pi;
	return pi;
}


int main()
{
	st1 *st_pst1, st_st1;
	_Bool *bool_pvar, bool_rt;
	char *char_pvar="msgmsg1";
	char *char_prt;
	double *double_pvar, double_var;
	float _Complex complex_rt;
	signed short *short_pvar;
	signed long long int *lli_prt, lli_tmp;
	u1 union_u1, union_rt, *union_prt;
	int *int_prt;
	
	header("GNU ","GNU __attribute__ malloc");
	
	st_pst1 = test1(65);
	ichck(1, 0.0, st_pst1->double_var, "test1-2 NG\n");
	
	bool_var = true;
	bool_pvar = test2();
	if(*bool_pvar != true)
	{
		printf("\t test2 NG\n");
	}
	
	char_prt = test3(char_pvar);
	schck(3, "msgmsg1", char_pvar, "test3 NG\n");
	
	double_pvar = test4();
	dchck(4, 12835.10, double_pvar[3], 0.1, "test4 NG\n");
	free(double_pvar);
	
	complex_rt = al_test5(1152.5);
	fchck(5, 1152.5, creal(complex_rt), 0.1, "test5-1 NG\n");
	fchck(5, 1583.2, cimag(complex_rt), 0.1, "test5-2 NG\n");
	
	test6();
	
	short_pvar = test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7test7(982);
	sichck(7, 947, *short_pvar, "test7 NG\n");
	
	test8();
	
	lli_prt = test9(36875, 126);
	lli_tmp = 36875 + 126;
	llichck(9, lli_tmp, *lli_prt, "test9 NG\n");
		
	double_pvar = test11(356, 71236.24, &st_st1);
	dchck(11, 71592.24, *double_pvar, 0.1, "test11 NG\n");
	
	union_prt = test12(326);
	ichck(12, 326, union_prt->uint_var, "test12 NG\n");
	
	bool_rt = test13();
	if(bool_rt != true)
	{
		printf("\t test13 NG\n");
	}
	
	int_prt = test14(2458.00);
	ichck(14, 2458, *int_prt, "test14 NG\n");
	
	func1();
	
	header("GNU ","GNU __attribute__ malloc");
	
	return 0;
}
