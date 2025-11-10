#include<stdio.h>
#include <string.h>
#include <stdbool.h>
#include <complex.h>
#include"004.h"
#include"001.h"

_Bool bool_var = false;
signed short short_var = 365;
extern unsigned int uint_var;
int int_var, int_rt;
double double_var = 18569.2;
extern float float_var;
float _Complex complex_var = 125.5f + 125.0fi;
long long int lli_var = 954732;
u1 union_u1;

__attribute__((const, section("test1"))) static int t(st1);

__attribute((const, nonnull)) void test2(double double_var)
{
	sichck(2, 365, short_var, "test No.2 NG\n");
}

__attribute((const, warn_unused_result)) extern st1 test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3(int, char*);

st1 test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3(int int_var, char *char_var)
{
	st1 st_st1;
	dchck(3, 18569.2, double_var, 0.0, "test3-1 NG\n");
	double_var = 25863.0;
	st_st1.double_var = double_var;
	return st_st1;
}

__attribute__((const, malloc)) static void test4(char *char_var)
{
	strcpy(char_var, "abcd");
}

__attribute__((const, pure)) int test5(float float_var);

extern float _Complex* test6(float float_var) __attribute__((const, weak));
float _Complex* test6(float float_var)
{
	complex_var = complex_var + float_var;
	return &complex_var;
}

extern char* test7(int, u1, char*) __attribute__((const, nothrow));

__attribute__((const, used)) long long int* u(short short_var)
{
	lli_var = lli_var + short_var;
	return &lli_var;
}

extern int test10(double) __attribute((const, unused));


void test_ex()
{
	int_var = 2;
}
void test_ex_const() __attribute((const, alias("test_ex")));
void test_ex_pure() __attribute((pure, alias("test_ex")));

void test_ex1()
{
	int_var = 1;
	printf("\t Pre test_ex1 int_var=%d\n", int_var);
	test_ex();
	printf("\t After test_ex1 int_var=%d\n", int_var);
}

void test_ex2()
{
	int_var = 1;
	printf("\t Pre test_ex2 int_var=%d\n", int_var);
	test_ex_const();
	printf("\t After test_ex2 int_var=%d\n", 2);
}

#if defined(__aarch64__)
__attribute((const)) void test_ex3()
{
	int_var = 1;
	printf("\t Pre test_ex3 int_var=%d\n", int_var);
	test_ex();
	printf("\t After test_ex3 int_var=%d\n", int_var);
}

__attribute((const)) void test_ex4()
{
	int_var = 1;
	printf("\t Pre test_ex4 int_var=%d\n", int_var);
	test_ex_const();
	printf("\t After test_ex4 int_var=%d\n", int_var);
}

__attribute((const)) void test_ex5()
{
	int_var = 1;
	printf("\t Pre test_ex5 int_var=%d\n", int_var);
	test_ex_pure();
	printf("\t After test_ex5 int_var=%d\n", int_var);
}

__attribute((pure)) void test_ex6()
{
	int_var = 1;
	printf("\t Pre test_ex6 int_var=%d\n", int_var);
	test_ex_pure();
	printf("\t After test_ex6 int_var=%d\n", int_var);
}

__attribute((pure)) void test_ex7()
{
	int_var = 1;
	printf("\t Pre test_ex7 int_var=%d\n", int_var);
	test_ex_pure();
	printf("\t After test_ex7 int_var=%d\n", int_var);
}
#else
void test_ex3()
{
        int_var = 1;
        printf("\t Pre test_ex3 int_var=%d\n", int_var);
        int_var = 2;
        printf("\t After test_ex3 int_var=%d\n", int_var);
}

void test_ex4()
{
        int_var = 1;
        printf("\t Pre test_ex4 int_var=%d\n", int_var);
        int_var = 2;
        printf("\t After test_ex4 int_var=%d\n", int_var);
}

void test_ex5()
{
        int_var = 1;
        printf("\t Pre test_ex5 int_var=%d\n", int_var);
        int_var = 2;
        printf("\t After test_ex5 int_var=%d\n", int_var);
}

void test_ex6()
{
        int_var = 1;
        printf("\t Pre test_ex6 int_var=%d\n", int_var);
        int_var = 2;
        printf("\t After test_ex6 int_var=%d\n", int_var);
}

void test_ex7()
{
        int_var = 1;
        printf("\t Pre test_ex7 int_var=%d\n", int_var);
        int_var = 2;
        printf("\t After test_ex7 int_var=%d\n", int_var);
}
#endif

int main()
{
	st1 st_st1;
	char char_var[NUM], *char_pvar;
	float _Complex *complex_rt;
	long long int lli_tmp, *lli_pvar;
	_Bool bool_rt;
	
	header("GNU ","GNU __attribute__ const");
	
	test2(228.20);
	
	st_st1 = test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3(int_var, "test3");
	
	dchck(3, 25863.0, st_st1.double_var, 0.0, "test3-2 NG\n");
	dchck(3, 25863.0, double_var, 0.0, "test3-3 NG\n");
	
	memset(char_var, 0x00, sizeof(char_var));
	
	uint_var = 4838;
	int_rt = test5(58.24);
	ichck(5, 4838, int_rt, "test 5 NG\n");
	
	complex_rt = test6(1000.0);
	fchck(6, 1125.5, crealf(*complex_rt), 0.1, "test6-1 NG\n");
	fchck(6, 125.0, cimagf(*complex_rt), 0.1, "test6-2 NG\n");
	
	float_var = 3.25;
	union_u1.uint_var = 253;
	char_pvar = test7(15, union_u1, char_var);
	schck(7, "253abcd3.25", char_pvar, "test7 NG\n");
	
	lli_pvar = u(25);
	lli_tmp = 954757;
	llichck(8, lli_tmp, *lli_pvar, "test8 NG\n");
	
	test_ex1();
	test_ex2();
	test_ex3();
	test_ex4();
	test_ex5();
	test_ex6();
	test_ex7();
	
	header("GNU ","GNU __attribute__ const");
	
	return 0;
}
