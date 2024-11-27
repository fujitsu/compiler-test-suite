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
		struct {
			float e;
			int f;
		} y;
	} x={1.0,2,3.0,'d',4.0,5};
	printf("x.a => %f\n",x.a);
	printf("x.b => %d\n",x.b);
	printf("x.c => %f\n",x.c);
	printf("x.d => %c\n",x.d);
	printf("x.y.e => %f\n",x.y.e);
	printf("x.y.f => %d\n",x.y.f);
	exit(0);
}
