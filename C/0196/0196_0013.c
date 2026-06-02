/*
 K.3.9.1.5/p2, p3, p5
 2 Neither s nor format shall be a null pointer. Any argument indirected though in order
 to store converted input shall not be a null pointer.
 3 If there is a runtime-constraint violation, the swscanf_s function does not attempt to
 perform further input, and it is unspecified to what extent swscanf_s performed input
 before discovering the runtime-constraint violation.
 5 The swscanf_s function returns the value of the macro EOF if an input failure occurs
 before any conversion or if there is a runtime-constraint violation. 
*/

#include <wchar.h>
#include <stdio.h>
#include <assert.h>

// s == NULL 
void test1() {
	wchar_t dst[10];
	assert(EOF == swscanf_s(NULL, L"%s", dst));
}

// format == NULL 
void test2() {
	wchar_t src[10] = L"test";
	wchar_t dst[10];
	assert(EOF == swscanf_s(src, NULL, dst));
}

// argument(store converted input) == NULL
void test3() {
	wchar_t src[10] = L"test";
	assert(EOF == swscanf_s(src, L"%s", NULL));
}

void test() {
    test1();
    test2();
    test3();
}

int main(int argc, char *argv[]) {
	test();
	return 0;
}
