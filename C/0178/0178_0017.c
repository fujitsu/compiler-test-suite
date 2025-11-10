#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include"004.h"

#define  Macro001(str1, str2, str3, str4, num, arg...)  func001(str1, str2, str3, str4, num, ##arg)
#define  macro002(num, ...)  func002(num, ##__VA_ARGS__)
#define  MACRO003(str1, str2, str3, str4, num, ...)  func003(str1, str2, str3, str4, num, __VA_ARGS__)
#define  Macro004(num, str1, str2, ...)  func004(num, str1, str2, __VA_ARGS__)
#define  MACRO005(str1, str2, num, arg...)  func005(str1, str2, num, ##arg)

void func001(char *str1, char *str2, char *str3, char *str4, int num, ...){
	va_list list;
	va_start(list, num);
	va_end(list); 
}

void func002(int num, ...){
	int i;
	va_list list;
	va_start(list, num);

	for(i = 1; i <= num; i++){
		ichck(2, i, va_arg(list, int), "Macros Arguments  No.2 NG\n");
	}

	va_end(list); 
}

void func003(char *str1, char *str2, char *str3, char *str4, int num, ...){
	int i;
	va_list list;
	va_start(list, num);

	for(i = 1; i <= num; i++){
		ichck(3, i, va_arg(list, int), "Macros Arguments  No.3 NG\n");
	}
	
	va_end(list); 
}

void func004(int num, char *str1, char *str2, ...){
	int i;
	va_list list;
	va_start(list, str2);

	ichck(4, 1, va_arg(list, int), "Macros Arguments  No.4 NG\n");
	
	va_end(list); 
}

void func005(char *str1, char *str2, int num, ...){
	int i;
	va_list list;
	va_start(list, num);

	for(i = 1; i <= num; i++) {
		ichck(5, i, va_arg(list, int), "Macros Arguments  No.5 NG\n");
	}
	
	va_end(list); 
}

void test001() {
	Macro001("macro", "param", "variable", "test", 0);
}

void test002() {
	macro002(5, 1, 2, 3, 4, 5);
}

void test003() {
	MACRO003("macro", "param", "variable", "test", 3, 1, 2, 3);
}

void test004() {
	Macro004(3, "macro", "param", 1, 2, 3);
}

void test005() {
	MACRO005("macro", "param", 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
}

int main(){

	header("GNU macro","Gnu Macros with a Variable Number of Arguments test");
	test001();
	test002();
	test003();
	test004();
	test005();
	header("GNU macro","Gnu Macros with a Variable Number of Arguments test");

}
