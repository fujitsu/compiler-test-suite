#ifndef VSBLTY_H
#define VSBLTY_H

#include <stdio.h>
#define NUM0 10

typedef struct st1
{
	int int_var;
	double double_var;
	char char_var[NUM0];
} st1;

typedef union u1
{
	unsigned int uint_var;
	double double_var;
} u1;

__attribute__((aligned(8))) float float_var1 = 22.35;
short short_var1 = 25;

void test16(_Bool bool_var, int *int_var)
{
	*int_var = 586;
}

#endif

