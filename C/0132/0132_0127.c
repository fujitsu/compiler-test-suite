#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	union{
		float a[10];
		float c[10];
	} real;
	int i;
	for(i=0;i<10;i++) real.c[i]=0.;
	for( i=0;i<10;i++)
	{
		real.a[i]=b[i];
		real.a[9]=5.0;
	}
	printf("c[2]= %f \n",real.c[2]);
	printf("a= ");
	for(i=0;i<10;i++) printf("%5.2f ",real.a[i]);
	printf("\n");
	exit (0);
}
