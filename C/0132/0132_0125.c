#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float  c[10]={
		1,1,1,1,1,1,1,1,1,1	};
	union{ 
		float a;
		float b;
	}real;
	int i;
	real.b=2.;
	for( i=1;i<=10;i+=1)
	{
		real.a=c[i-1];
	}
	printf("a= %g \n",real.a);
	printf("b= %g \n",real.b);
	printf("c= ");
	for(i=0;i<10;i++) printf("%g",c[i]);
	printf("\n");
	exit (0);
}
