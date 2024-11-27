#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	struct {
		double a;
		int b;
		double c;
	} x={1.0,2,3.0};
	printf("x.a => %f\n",x.a);
	printf("x.b => %d\n",x.b);
	printf("x.c => %f\n",x.c);
	exit(0);
}
