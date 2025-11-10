#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include"004.h"
int func01(int a);

#define NUM0 10
#define NUM  100

typedef struct st1{
	int int_var1;
	int int_var2;
	char char_var[NUM];
} st1;

typedef union u1{
	double double_var;
	int int_var;
} u1;

int test1(int int_var1, int int_var2)
{
	return int_var1 ?:int_var2;
}

float test2(float float_var1, float float_var2)
{
	return float_var1 ? :++float_var2;
}

double test3(double double_var1, double double_var2)
{
	return double_var1 ?:double_var2++;
}

double test4(double double_var1, double double_var2)
{
	return double_var1 ?:--double_var2;
}

float test5(float float_var1, float float_var2)
{
	return float_var1 ?:float_var2--;
}

double test6(double double_var1, double double_var2)
{
	return double_var1 ?: (double_var1+2?:double_var2+3);
}

short test7(short short_var1, short short_var2)
{
	return func01(short_var2+3) ?: (short_var1*short_var1?:short_var2*short_var2);
}

int test8(int int_var1, int int_var2)
{
	return int_var1 ?:int_var2<<1;
}

int test9(int int_var1)
{
	float float_var = 3.1;
	return int_var1 ?: float_var;
}

float test10(float float_var1)
{
	double double_var = 3.5;
	return float_var1 ?: double_var*double_var;
}

double test11(double double_var1)
{
	int int_var = 2;
	return double_var1 ?: int_var%int_var;
}

double test12(double double_var1)
{
	short short_var = 256;
	return double_var1 ?: short_var%short_var;
}

int func01(int a)
{
	return a*a;
}

int main()
{	
	int int_var1, int_var2;
	short short_var1, short_var2;
	float float_var1, float_var2;
	double double_var1, double_var2;
	
	int rt_var;
	int int_rt;
	float float_rt;
	double double_rt;
	short short_rt;
	st1 st_st1;
	u1 union_u1;
	
	header("GNU ","GNU Conditionals with Omitted Operands");
	
	int_var1=0;
	int_var2=3;
	float_var1=3.0;
	float_var2=0.0;
	double_var1=3.0;
	double_var2=0.0;
	short_var1=0;
	short_var2=3;
	st_st1.int_var1 = 0;
	st_st1.int_var2 = 3;
	union_u1.double_var = 0.0;
	
	
	int_rt = test1(int_var1, int_var2);
	ichck(1, 3, int_rt, "test1-1 NG\n");
	int_rt = test1(int_var2, int_var1);
	ichck(1, 3, int_rt, "test1-2 NG\n");
	
	float_rt = test2(float_var1, float_var2);
	fchck(2, 3.0, float_rt, 0.1, "test2-1 NG\n");
	float_rt = test2(float_var2, float_var1);
	fchck(2, 4.0, float_rt, 0.1, "test2-2 NG\n");
	
	double_rt = test3(double_var1, double_var2);
	dchck(3, 3.0, double_rt, 0.1, "test3-1 NG\n");
	double_rt = test3(double_var2, double_var1);
	dchck(3, 3.0, double_rt, 0.1, "test3-2 NG\n");
	
	int_rt = test4(int_var1,int_var2);
	ichck(4, 2, int_rt, "test4 NG\n");
	int_rt = test4(int_var2,int_var1);
	ichck(4, 3, int_rt, "test4 NG\n");
	
	float_rt = test5(float_var1, float_var2);
	fchck(5, 3.0, float_rt, 0.1, "test5 NG\n");
	float_rt = test5(float_var2, float_var1);
	fchck(5, 3.0, float_rt, 0.1, "test5 NG\n");
	
	double_rt = test6(double_var1, double_var2);
	dchck(6, 3.0, double_rt, 0.1, "test6-1 NG\n");
	double_rt = test6(double_var2, double_var1);
	dchck(6, 2.0, double_rt, 0.1, "test6-2 NG\n");
	
	short_rt = test7(short_var1, short_var2);
	sichck(7, 36, short_rt, "test7-1 NG\n");
	short_rt = test7(short_var2, short_var1);
	sichck(7, 9, short_rt, "test7-2 NG\n");
	
	int_rt = test8(int_var1, int_var2);
	ichck(8, 6, int_rt, "test8 NG\n");
	
	int_rt = test9(int_var1);
	ichck(9, 3, int_rt, "test9 NG\n");
	
	float_rt = test10(float_var2);
	fchck(10, 12.25, float_rt, 0.1, "test10 NG\n");
	
	double_rt = test11(double_var2);
	dchck(11, 0.0, double_rt, 0.1, "test11 NG\n");
	
	double_rt = test12(double_var2);
	dchck(12, 0.0, double_rt, 0.1, "test12 NG\n");
	
	int_rt = test1(st_st1.int_var1, st_st1.int_var2);
	ichck(13, 3, int_rt, "test13-1 NG\n");
	int_rt = test1(st_st1.int_var2, st_st1.int_var1);
	ichck(13, 3, int_rt, "test13-2 NG\n");
	
	double_rt = test12(union_u1.double_var);
	dchck(14, 0.0, double_rt, 0.1, "test14 NG\n");
	
	header("GNU ","GNU Conditionals with Omitted Operands");
	
	return 0;
}
