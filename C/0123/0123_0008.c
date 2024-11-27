#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	struct {
		double a;
		int b;
		double c;
		char d;
	} x={1.0,2,3.0,'d'};
	printf("x.a => %f\n",x.a);
	printf("x.b => %d\n",x.b);
	printf("x.c => %f\n",x.c);
	printf("x.d => %c\n",x.d);
	exit(0);
}
