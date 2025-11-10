#include <stdio.h>
#include"004.h"

typedef long DEP_FUNC_004 __attribute__ ((deprecated));

int test_func006(int param)  __attribute__((deprecated, const));

int func007(int param);

extern int test_func002() __attribute__((deprecated, warn_unused_result));

extern int test_func005(int __attribute__((deprecated)) param);

extern int __attribute__((deprecated, alias("func007"))) test_func007(int param);

typedef int DEP_VAR_001 __attribute__((deprecated));
static DEP_VAR_001 var_001;

typedef int* DEP_VAR_002 __attribute__((deprecated));
extern DEP_VAR_002 var_002;

extern int var_005 __attribute__((deprecated, weak));

extern int var_006 __attribute__((deprecated));

extern int var_009;

static int var_010;

static int __attribute__((deprecated, warn_unused_result)) test_func001(){
	return 0;
}

int test_func003(int __attribute((deprecated)) param){
	return param;
}

int test_func004(DEP_FUNC_004 param){
	return param;
}

int test_func006(int param) {
	return param;
}

int func007(int param){
	return param;
}

int test_func008(int param __attribute__((deprecated))){
	return param;
}

static int  __attribute((deprecated, const)) test_func009(int param){
	return param;
}

void test_var001(){
	var_001 = 100;
}

void test_var002(){
	int var = 100;
	var_002 = &var;
}

void test_var003(long var_003 __attribute__ ((deprecated))){
	long var = var_003;
}

void test_var004(){
	static long __attribute__((deprecated)) var_004 = 10;
}

void test_var005(){
	int *var = &var_005;
}

void test_var006(){
	int var = var_006;
}

void test_var007(){
	static double __attribute__((deprecated)) var_007;
}

void test_var008(){
	long double var_008;
	var_008 = 1.1;
}

void test_var009(){
	var_009 = 100;
}

void test_var010(){
	var_010 = 100;
}

void test_var011(){
	struct tag011 {
		int __attribute__((deprecated)) int_var;
		char char_var;
	} str_011;
	str_011.int_var = 100;

	struct tag011_2 {
		int int_var;
		char char_var;
	} __attribute__((deprecated)) str_011_2;
	str_011_2.int_var = 100;

	struct tag011_3 {
		unsigned bit1 : 1;
		unsigned __attribute__((deprecated)) bit2 : 1;
		unsigned bit3 : 1;
		char char_var;
	} str_011_3;
	str_011_3.bit1 = 1;
	str_011_3.bit2 = 1;
	str_011_3.bit3 = 1;
}

void test_var012(){
	int var_012_base __attribute__((deprecated));
	typeof(var_012_base) var_012;
	var_012_base = 100;
	var_012 = 100;
}

void test_var013(){
	union tag013 {
		int __attribute__((deprecated)) int_var;
		long long_var;
	} str_013;
	str_013.int_var = 100;
	str_013.long_var = 100;

	union tag013_2 {
		int int_var;
		long long_var;
	} __attribute__((deprecated)) str_013_2;
	str_013_2.int_var = 100;
}

int main() {
	int ret;
	int (*p) (int param);
	long double __attribute__((deprecated)) var_008;

	header("GNU deprecated","Gnu Attribute deprecated test");

	ret = test_func001();
	p = test_func003;
	ret = p(3);
	ret = test_func004(4);
	ret = test_func005(5);
	p = test_func007;
	ret = p(3);
	ret = test_func009(9);
	ret = p(9);

	test_var001();
	test_var002();
	test_var003(3);
	test_var004();
	test_var005();
	test_var006();
	test_var007();
	test_var008();
	test_var009();
	test_var010();
	test_var011();
	test_var012();
	test_var013();

	header("GNU deprecated","Gnu Attribute deprecated test");
} 
