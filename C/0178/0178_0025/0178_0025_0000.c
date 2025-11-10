#include<stdio.h>
#include<string.h>
#include<stdbool.h>
#include<time.h>
#include <complex.h>
#include"004.h"
#include"003.h"
int test10(unsigned short ushort_var);

st1 st_st1;
u1 union_u1;
int int_var;
double double_var;
float float_var;
char char_var[NUM];
unsigned short ushort_var;
extern signed long long int lli_var;
_Bool bool_var;
float _Complex complex_var;

static int t() __attribute__((pure, section("test1")));
int t()
{
	st_st1.int_var = 9872;
	return st_st1.int_var;
}

__attribute__((pure, malloc)) extern int test2(int int_var);

__attribute((pure, const)) extern time_t test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3(int int_var);

static __attribute((pure, visibility("hidden"))) st1 test4(st1 st_st1)
{
	strcpy(st_st1.char_var, char_var);
	strcat(st_st1.char_var, "4");
	return st_st1;
}

__attribute__ ((pure, deprecated)) float test5(float float_var2)
{
	float *float_pvar;
	float_pvar = &float_var;
	return *float_pvar + float_var2 + 0.1;
}

extern st1 test6(char*, int , u1) __attribute((pure, noinline));

__attribute__((pure, always_inline)) long long int test7(long long int lli_var2)
{
	lli_var = lli_var + lli_var2;
	return lli_var;
}

static __attribute((pure, warn_unused_result)) _Bool test8()
{
	if(bool_var != true)
	{
		printf("\t test8-1 NG\n");
	}
	
	bool_var = false;
	
	return bool_var;
}

extern float test9(int) __attribute__((pure, weak));
float test9(int int_var2)
{
	return creal(complex_var) + st_st1.double_var + int_var2;
}

int al_test10(unsigned short) __attribute__((pure));

__attribute__((pure, used)) void test11(char* char_var)
{
	schck(11, "test No.11", char_var, "test11 NG\n");
}

__attribute__((pure, section("ex1"))) int int_atvar;

struct atst
{
	int int_var;
	double double_var;
	char char_var[NUM];
}__attribute__((pure, aligned(16)));

void dummy_ref(long long int x) {;}

int main()
{
	unsigned short ushort_var;
	int int_rt;
	float float_rt;
	time_t time_rt;
	st1 st_st1rt;
	long long int lli_rt, lli_tmp;
	_Bool bool_rt;
	
	header("GNU ","GNU __attribute__ pure");
	
	int_rt = t();
	ichck(1, 9872, int_rt, "test1 NG\n");
	
	int_rt = test2(3);
	ichck(2, 1589, int_rt, "test2 NG\n");
	
	time_rt = test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3(25);
	
	strcpy(char_var, "test");
	st_st1rt = test4(st_st1);
	schck(4, "test4", st_st1rt.char_var, "test4 NG\n");
	
	float_var = 3569.2;
	float_rt = test5(-4586.2);
	fchck(5, float_rt, -1016.9, 0.1, "test5 NG\n");
	
	lli_var = 15932;
	lli_tmp = lli_var + 48563;
	lli_rt = test7(48563);
#ifdef __OPTIMIZE__
        dummy_ref(lli_rt);
#endif
	llichck(7, lli_tmp, lli_var, "test7 NG\n");
	
	bool_var = true;
	bool_rt = test8();
	if(bool_rt != false)
	{
		printf("\t test8-2 NG\n");
	}

	st_st1.double_var = -1236.25;
	complex_var = 1256.35f + 9873.2fi;
	float_rt = test9(1);
	fchck(9, 21.1, float_rt, 0.1, "test9 NG\n");
	
	union_u1.uint_var = 6832;
	ushort_var = 325;
	int_rt = test10(ushort_var);
	ichck(10, 7157,int_rt, "test10 NG\n");
	
	test11("test No.11");
	
	header("GNU ","GNU __attribute__ pure");
	
	return 0;
}
