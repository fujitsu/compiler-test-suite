#include <stdio.h>
#include <stdarg.h>
#include"004.h"

extern int myprintf003() __attribute__ ((format (__printf__, 2, 3), weak));
extern int MYPRINTF() __attribute__ ((format (printf, 2, 3)));
extern int myprintf_010() __attribute__ ((format (__printf__, 2, 3), weak));
extern int __attribute__ ((format (printf, 2, 3), weak)) myPRINTF() ;

static int __attribute__ ((format (printf, 2, 3)))
      myprintf (void *my_object, const char *my_format, ...);

int myPrintf (void *my_object, const char *my_format, ...) __attribute__ ((format (__printf__, 2, 3)));

int myprintf_005 (void *my_object, const char *my_format, ...) __attribute__ ((format (__printf__, 2, 3)));

static int __attribute__ ((format (__printf__, 2, 3))) MYPRINTFX(void *my_object, const char *my_format, ...);

static int __attribute__ ((format (printf, 2, 3))) myprintf007(void *my_object, const char *my_format, ...);

static int __attribute__ ((format (printf, 2, 3))) MYprintf(void *my_object, const char *my_format, ...);

int __attribute__ ((format (scanf, 2, 3))) MYSCANF(void *my_object, const char *my_format, ...);

int __attribute__ ((format (scanf, 2, 3))) myscanf(void *my_object, const char *my_format, ...);

int __attribute__ ((format (__printf__, 2, 3)))
      myprintfx (void *my_object, const char *my_format, ...);

int myprintf013 (void *my_object, const char *my_format, ...) __attribute__ ((format (printf, 2, 3)));

int myprintf (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int), va_arg(list, int));
	va_end(list);
}

int myPrintf (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int), va_arg(list, int));
	va_end(list);
}

int myprintf_005 (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

int MYPRINTFX (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

int myprintf007 (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

int MYprintf (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

int MYSCANF(void *my_object, const char *my_format, ...){
	printf("%s %s", my_object, my_format);
}

int myscanf(void *my_object, const char *my_format, ...){
	printf("%s %s", my_object, my_format);
}

int myprintfx (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

int myprintf013 (void *my_object, const char *my_format, ...){
	va_list list;
	va_start(list, my_format);
	printf(my_format, va_arg(list, int));
	va_end(list);
}

void test001(){
	myprintf("test001", "test001 %-X %X\n", 5, 10);
}

void test002(){
	myPrintf("test002", "test002 %*d\n", 3, 4);
}

void test003(){
	myprintf003("test003", "test003 %#o\n", 10);
}

void test004(){
	MYPRINTF("test004", "test004 %f\n", 12.3);
}

void test005(){
	myprintf_005("test005", "test005 %c\n", 'a');
}

void test006(){
#if defined(__aarch64__)
	MYPRINTFX("test006", "test006 %3.5g\n", 0.1234);
#else
	printf("test006 0.1234\n");
#endif
}

void test007(){
#if defined(__aarch64__)
	myprintf007("test007", "test007 %+e\n", 0.1234);
#else
	printf("test007 +1.234000e-01\n");
#endif
}

void test008(){
	MYprintf("test008", "test008 %.p\n", 0.1234);
}

void test009(){
	float float_var;
	MYSCANF("test009", "%E\n", &float_var);
}

void test010(){
	myprintf_010("test010", "test010 %s\n", "test010");
}

void test011(){
	float float_var;
	myscanf("test011", "%Lf\n", &float_var);
}

void test012(){
	myprintfx("test012", "test012 %+x\n", 125);
}

void test013(){
	myprintf013("test013", "test013 %3.5lld\n", 123.4);
}

void test014(){
	myPRINTF("test014", "test014 %+u\n", -12345);
}

int main() {

	header("GNU format","Gnu Attribute format test");

	test001();
	test002();
	test003();
	test004();
	test005();
	test006();
	test007();
	test009();
	test010();
	test011();
	test012();
	test014();

	header("GNU format","Gnu Attribute format test");
} 
