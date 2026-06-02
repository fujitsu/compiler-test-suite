/*
 K.3.9.1.10/p2, p3, p5
 2 Neither s nor format shall be a null pointer. Any argument indirected though in order
 to store converted input shall not be a null pointer.
 3 If there is a runtime-constraint violation, the vswscanf_s function does not attempt to
 perform further input, and it is unspecified to what extent vswscanf_s performed input
 before discovering the runtime-constraint violation.
  Returns
 5 The vswscanf_sfunction returns the value of the macro EOF if an input failure occurs
 before any conversion or if there is a runtime-constraint violation. 
*/

#include <stdarg.h> 
#include <stdio.h>
#include <wchar.h>
#include <assert.h>

// s == NULL
void test1(int pa, ...) {
	va_list va;
	va_start(va, pa);
	assert(EOF == vswscanf_s(NULL, L"%s", va));
	va_end(va);
}

// format == NULL
void test2(int pa, ...) {
	va_list va;
	va_start(va, pa);
	wchar_t dst[10] = L"test";
	assert(EOF == vswscanf_s(dst, NULL, va));
	va_end(va);
}

// argument(store converted input) == NULL
void test3(int pa, ...) {
	va_list va;
	va_start(va, pa);
	wchar_t dst[10] = L"test";
	assert(EOF == vswscanf_s(dst, L"%s", va));
	va_end(va);
}

void test() {
	wchar_t dt[10];
    test1(1, dt);
    test2(2, dt);
    test2(2, NULL);
}

int main(int argc, char *argv[]) {
	test();
	return 0;
}

