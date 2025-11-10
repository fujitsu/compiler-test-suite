#include<stdio.h>
#include<string.h>
#include <stdbool.h>
#include <complex.h>
#include"005.h"
#include"004.h"

extern float float_var1 __attribute__((visibility("protected"), aligned(8)));

int __attribute__((visibility("hidden"), weak)) int_var1=523;

static signed char char_var1 __attribute__((visibility("default"), mode(QI))) = 'A';

__attribute__((visibility("internal"), packed)) _Bool bool_var1 = true;


__attribute__((visibility("internal"), used)) extern signed short short_var1;

__attribute__((visibility("internal"), unused)) float _Complex complex_var = 125.2f + 1111.0fi;

__attribute__((visibility("hidden"), section("test7"))) u1 union_u1;

__attribute__((visibility("default"), unused)) typeof(complex_var) complex_var3 = 125.2f + 1111.0fi;
typeof(complex_var) complex_var2 = 125.2f + 1111.0fi;

__attribute__((visibility("hidden"), aligned(8))) double double_var1 = 2963.5;

__attribute__((visibility("internal"), used)) static long long int lli_var1;

__attribute__((visibility("protected"), aligned(16))) st1 st_st1;

int test12(int) __attribute__((visibility("default"), weak));
int test12(int int_var)
{
	if(int_var == 0 || int_var == 1)
	{
		return 1;
	}
	else
	{
		return int_var + test12(int_var-1);
	}
}


extern inline st1 test13(int,float) __attribute__((visibility("protected"), warn_unused_result));
st1 test13(int int_var, float float_var)
{
	float_var = 3;
	return (st1) {3, 25.0, "test13"};
}

__attribute__((visibility("hidden"), used)) extern void test14(long long int, int* , short, char*, st1);
void test14(long long int lli_var, int* int_var, short short_var, char *char_var, st1 st_st1)
{
	*int_var = 6532;
	strcpy(char_var, "test14");
}

__attribute__((visibility("hidden"), used))  void test15(_Bool bool_var, int *int_var)
{
	*int_var = 2225;
}

__attribute__((visibility("hidden"), used))  void test16(_Bool bool_var, int *int_var);

__attribute__((visibility("internal"), used)) extern void test17(long long int, int* , short, char*, st1);
void test17(long long int lli_var, int* int_var, short short_var, char *char_var, st1 st_st1)
{
	*int_var = 8301;
	strcpy(char_var, "test17");
}

__attribute__((visibility("internal"), used))  void test18(_Bool bool_var, int *int_var)
{
	*int_var = 3439;
}

int main()
{
	_Bool bool_var;
	float *float_pvar;
	char char_var[10];
	u1 *union_pu1;
	int int_rt;
	st1 st_st1tmp = {15, 2569.0, "st_st1tmp"};
	void (*func)(_Bool, int*);
	
	header("GNU ","GNU __attribute__ visibility");
	
	float_pvar = &float_var1;
	fchck(1, 22.35, *float_pvar, 0.1, "test No.1-1 NG\n");
	ichck(1, 8, __alignof(float_var1), "test No.1-2 NG\n");
	
	ichck(2, 523, int_var1, "test No.2-1 NG\n");
	
	ichck(3, 1, sizeof(char_var1), "test No.3-1 NG\n");
	
	if(bool_var1 != true)
	{
		printf("\t test No.4-1 NG\n");
	}
	bool_var1 = true;
	
	sichck(5, 25, short_var1, "test No.5 NG\n");
	
	fchck(6, 125.2, crealf(complex_var), 0.1, "test No.6 NG\n");
	complex_var = 1.0f + 1.0fi;
	
	union_u1.uint_var = 4829;
	union_pu1 = &union_u1;
	ichck(7, 4829, union_pu1->uint_var, "test No.7 NG\n");
	
	fchck(8, 125.2, crealf(complex_var3), 0.1, "test No.8 NG\n");
	
	dchck(9, 2965.3, double_var1, 0.1, "test No.9 NG\n");
	
	lli_var1 = 258865;
	lichck(10, 258865, lli_var1, "test No.10 NG\n");
	
	st_st1 = st_st1tmp;
	schck(11, "st_st1tmp", st_st1.char_var, "test No.11-1 NG\n");
	ichck(11, 16, __alignof(st_st1), "test No.11-2 NG\n");
	
	int_rt = test12(6);
	ichck(12, 21, int_rt, "test No.12 NG\n");
	
	st_st1tmp = test13(int_rt, float_var1);
	ichck(13, 3, st_st1tmp.int_var, "test No.13 NG\n");
	
	test14(lli_var1, &int_rt, short_var1, char_var, st_st1);
	ichck(14, 6532, int_rt, "test No.14-1 NG\n");
	schck(14, "test14", char_var, "test No.14-2 NG\n");
	
	func = test15;
	(*func) (bool_var, &int_rt);
	ichck(15, 2225, int_rt, "test No.15 NG\n");
	
	func = test16;
	(*func) (bool_var, &int_rt);
	ichck(16, 586, int_rt, "test No.16 NG\n");	

	test17(lli_var1, &int_rt, short_var1, char_var, st_st1);
	ichck(17, 8301, int_rt, "test No.17-1 NG\n");
	schck(17, "test17", char_var, "test No.17-2 NG\n");
	
	func = test18;
	(*func) (bool_var, &int_rt);
	ichck(18, 3439, int_rt, "test No.18 NG\n");
	
	header("GNU ","GNU __attribute__ visibility");
	
	return 0;
}
