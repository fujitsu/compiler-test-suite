#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	int i;
	union{ 
		float a[10];
		float c[10]; 
	} real;
	for(i=0;i<10;i++) real.c[i]=99.999;
	for(i=0;i<10;i++)
	{
		real.a[i]=b[i];
	}
	printf("a= ");
	for(i=0;i<10;i++) printf("%5.2f ",real.a[i]);
	printf("\n");
	exit (0);
}
