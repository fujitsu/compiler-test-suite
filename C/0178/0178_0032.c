#include <stdio.h>
#include"004.h"

static int VARONE __attribute__((used));
void  __attribute__((used, visibility("default"))) func02(void);
static void  func03(void) __attribute__((used));
void   __attribute__((used)) func_04(void);
long __attribute__((used, visibility("default"))) varfifth = 5;
static double __attribute__((used, aligned(32))) VARSIX;
static long long int var007 __attribute__((used)) = 7;
static float var_008 __attribute__((used, aligned(32))) = 8.8;
void FUNCNINE(void) __attribute__((used, visibility("default"))) ;
static void  func12(void) __attribute__((used));
static char var013 __attribute__((used)) = 13;
int var014 __attribute__((used)) = 14;
float var015 __attribute__((used));
static void  func16(void);
static int var017;

void func02(){
	printf("call_func02\n");
}

static void functhird(){
	printf("call_func03\n");
}

void func_04(){
	printf("call_func_04\n");
}

void FUNCNINE(){
	printf("call_FUNCNINE\n");
}

void func12(){
	printf("call_func12\n");
}

void func16(){
	printf("call_func16\n");
}

void test001() {
	int *ptr = &VARONE;
}

void test002() {
#if defined(__aarch64__)
	 __asm__("bl func02");
#else
	 __asm__("call func02");
#endif
	 __asm__("nop");
}

void test003() {
	 functhird();
}

void test004() {
	void (*p) (void);
	p = func_04;
	(*p)();
}

void test005() {
	long *ptr = &varfifth;
	*ptr = 55;
}

void test006() {
	printf("varsix_no_use\n");
}

void test007() {
	var007 = 77;
}

void test008() {
	float f = var_008;
}

void test009() {
	printf("FUNCNINE_no_use\n");
}

void test010() {
	typedef float  __attribute__ ((mode(SF), used)) ftype ;
}

void test011() {
	typedef float ftype  __attribute__ ((used));
}

void test012() {
	printf("func12_no_use\n");
}

void test013() {
	printf("var13_no_use\n");
}

void test014() {
	printf("var14_no_use\n");
}

void test015() {
	printf("var15_no_use\n");
}

void test016() {
	printf("func16_no_use\n");
}

void test017() {
	printf("var17_no_use\n");
}

int main(){
	header("GNU used","Gnu used test");

	test001();
	test003();
	test004();
	test005();
	test006();
	test007();
	test008();
	test009();
	test010();
	test011();
	test012();
	test013();
	test014();
	test015();
	test016();
	test017();

	header("GNU used","Gnu used test");

}
