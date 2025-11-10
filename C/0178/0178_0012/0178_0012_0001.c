#include<stdio.h>
#include <string.h>
#include <stdbool.h>
#include"001.h"

extern _Bool bool_var;
unsigned int uint_var;
extern int int_var;
float float_var;

int test5(float float_var)
{
	return uint_var;
}

char* test7(int int_var1, u1 union_u1, char* char_var)
{
	sprintf(char_var, "%d%s%1.2f", union_u1.uint_var, "abcd", float_var);
	return char_var;
}

inline _Bool test9()
{
	return bool_var;
}

