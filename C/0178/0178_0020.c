#include<stdio.h>
#include <string.h>
#include <stdbool.h>
#include <time.h>
#include"004.h"
#include"003.h"

__attribute__((noreturn, section("test"))) void test0(int int_var) 
{
	exit(3);
}

int main()
{
	header("GNU ","GNU __attribute__ noreturn");
	header("GNU ","GNU __attribute__ noreturn");
	
	test0(5);
	
	return 0;
}

