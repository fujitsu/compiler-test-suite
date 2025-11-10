#ifndef CNSTMP_H
#define CNSTMP_H

#include<stdio.h>
#include<string.h>

#define NUM 20

typedef struct st1
{
	int int_var;
	double double_var;
} st1;

typedef union u1
{
	unsigned int uint_var;
	double double_var;
} u1;

extern unsigned int uint_var;
#endif
