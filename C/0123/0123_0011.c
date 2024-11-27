#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	struct {
		double a;
		int b[10];
		double c;
	} x={1.0,2,3,4,5,6,7,8,9,0,0,11.0};
	printf("x.a => %f\n",x.a);
	printf("x.c => %f\n",x.c);
	exit(0);
}
