#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include"004.h"

#define __volatile int
#define __asm__ int
#define __typeof int
#define __attribute__ int
#define __signed__ int
#define __typeof__ int
#define __const__ int
#define __const int
#define typeof int
#define __attribute int
#define __complex__ int
#define __real int
#define __signed int
#define __volatile__ int
#define __restrict__ int
#define __restrict int

void test003() {
	__volatile int_var = 1;
	ichck(3, 1, int_var, "alternative keyword No.3 NG\n");
}

void test006() {
	__asm__ int_var = 1;
	ichck(6, 1, int_var, "alternative keyword No.6 NG\n");
}

void test009() {
	__typeof int_var = 1;
	ichck(9, 1, int_var, "alternative keyword No.9 NG\n");
}

void test012() {
	__typeof int_var = 1;
	ichck(12, 1, int_var, "alternative keyword No.12 NG\n");
}

void test015() {
	__signed int_var = 1;
	ichck(15, 1, int_var, "alternative keyword No.15 NG\n");
}

void test020() {
	__const__ int_var = 1;
	ichck(20, 1, int_var, "alternative keyword No.20 NG\n");
}

void test024() {
	__const int_var = 1;
	ichck(24, 1, int_var, "alternative keyword No.24 NG\n");
}

void test027() {
	typeof int_var = 1;
	ichck(27, 1, int_var, "alternative keyword No.27 NG\n");
}

void test030() {
	__attribute int_var = 1;
	ichck(30, 1, int_var, "alternative keyword No.30 NG\n");
}

void test033() {
	__complex__ int_var = 1;
	ichck(33, 1, int_var, "alternative keyword No.33 NG\n");
}

void test036() {
	__real int_var = 1;
	ichck(36, 1, int_var, "alternative keyword No.36 NG\n");
}

void test039() {
	__signed int_var = 1;
	ichck(39, 1, int_var, "alternative keyword No.39 NG\n");
}

void test042() {
	__volatile int_var = 1;
	ichck(42, 1, int_var, "alternative keyword No.42 NG\n");
}

void test045() {
	__restrict__ int_var = 1;
	ichck(45, 1, int_var, "alternative keyword No.45 NG\n");
}

void test046() {
	__restrict int_var = 1;
	ichck(46, 1, int_var, "alternative keyword No.46 NG\n");
}

int main(){

	header("GNU alt","Gnu alternative keyword test");
	test003();
	test006();
	test009();
	test012();
	test015();
	test020();
	test024();
	test027();
	test030();
	test033();
	test036();
	test039();
	test042();
	test045();
	test046();

	header("GNU alt","Gnu alternative keyword test");

}
