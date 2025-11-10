#include <stdio.h>
#include"004.h"

extern void  FUNCSECOND(void) __attribute__((used, weak));
void __attribute__((used)) func_004(void);
static void func_006(void) __attribute__((used));
void __attribute__((used, weak)) functen(void) ;
extern long __attribute__((unused)) VARTWELVE;
void __attribute__((used)) func014(void);
void FUNCFIFTEEN(void) __attribute__((used)) ;
static void func017(void) __attribute__((used)) ;
void func018(void);
extern void func019(void);
static void func020(void);
extern double __attribute__((unused)) var021;
static long long int __attribute__((unused)) var022;
extern int var025;
static int var026;

void func_004(){
	printf("call_func_004\n");
}

void func_006(){
	printf("call_func_006\n");
}

void functen(){
	printf("call_functen\n");
}

void func014(){
	printf("call_func014\n");
}

void FUNCFIFTEEN(){
	printf("call_FUNCFIFTEEN\n");
}

void func017(){
	printf("call_func017\n");
}

void func018(){
	printf("call_func018\n");
}

void func020(){
	printf("call_func020\n");
}

void test001() {
	static int __attribute__ ((unused)) varone;
	varone = 1;
}

void test002() {
	printf("FUNCSECOND_no_use\n");
}

void test003() {
	register int var003 __attribute__ ((unused));
	var003 = 1;
}

void test004() {
	typedef void (*func_def_004)(void);
	func_def_004 p;
	p = func_004;
	(*p)();
}

void test005() {
	long __attribute__ ((unused, aligned(32))) var005;
	long *p = &var005;
	*p = 5;
}

void test006() {
#if defined(__aarch64__)
	 __asm__("bl func_006");
#else
	 __asm__("call func_006");
#endif
	 __asm__("nop");
}

void test007() {
	typedef int type007 __attribute__ ((unused));
	type007 VARSEVEN;
	VARSEVEN = 7;
}

void test008() {
	typedef int type008;
	type008 vareight  __attribute__ ((unused, aligned(32)));
	int var = vareight;
	var ++;
}

void test009() {
	typedef int __attribute__ ((unused, aligned(32))) type009;
	type009 var009;
}

void test010() {
	printf("functen_no_use\n");
}

void test011() {
	typedef int __attribute__ ((unused, aligned(32))) type_011;
}

void test012() {
	long *ptr = &VARTWELVE;
	*ptr = 12;
}

void test013() {
	typedef double type013;
	type013 var_013 __attribute__ ((unused, aligned(32)));
	printf("var_013_no_use\n");
}

void test014() {
#if defined(__aarch64__)
	 __asm__("bl func014");
#else
	 __asm__("call func014");
#endif
	 __asm__("nop");
}

void test015() {
	void (*p) (void);
	p = FUNCFIFTEEN;
	(*p)();
}

void test016() {
	typedef int type016 __attribute__ ((unused));
	type016 varsixteen = 16;
	int var = varsixteen;
	var ++;
}

void test017() {
	printf("func017_no_use\n");
}

void test018() {
	printf("func018_no_use\n");
}

void test019() {
	printf("func019_no_use\n");
}

void test020() {
	printf("func020_no_use\n");
}

void test021() {
	printf("var021_no_use\n");
}

void test022() {
	printf("var022_no_use\n");
}

void test023() {
	static char __attribute__((unused)) var023;
	printf("var023_no_use\n");
}

void test024() {
	float __attribute__((unused)) var024;
	printf("var024_no_use\n");
}

void test025() {
	printf("var025_no_use\n");
}

void test026() {
	printf("var026_no_use\n");
}

void test027() {
	static long var027;
	printf("var027_no_use\n");
}

void test028() {
	int var028;
	printf("var028_no_use\n");
}

void test029() {
	static long __attribute__((unused)) var;
	var = 29;
	typeof(var)  var029;
	printf("var029_no_use\n");
}

void test030() {
	static int var;
	var = 30;
	typeof(var)  var030;
	printf("var030_no_use\n");
}

int main(){

	header("GNU unused","Gnu unused test");

	test001();
	test002();
	test003();
	test004();
	test005();
	test007();
	test008();
	test009();
	test010();
	test011();
	test012();
	test013();
	test015();
	test016();
	test017();
	test018();
	test019();
	test020();
	test021();
	test022();
	test023();
	test024();
	test025();
	test026();
	test027();
	test028();
	test029();
	test030();

	header("GNU unused","Gnu unused test");

	return 0;
}
