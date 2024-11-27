#include <stdlib.h>
#include <math.h>
#include<stdio.h>
typedef struct row_elt {
	int    col;
	double val;
} row_elt;
int main()
{
	int         j;
	double    sum;
	row_elt a[10];
	row_elt *elts;
	elts = &a[0];
	printf("Hello world\n");
	for( j= 0; j< 10;j++) {
		elts->val = 1.0;
		elts->col = 1;
		elts++;
	}
	sum = 0.0;
	elts = &a[0];
	for(j=0;j<10;j++) {
		sum +=elts->val;
		elts++;
	}
	printf("sum = %g\n",sum);
	exit (0);
}
