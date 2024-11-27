#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float  a[10]={
		1,1,1,1,1,1,1,1,1,1	},
	b[10]={
		0,0,0,0,0,0,0,0,0,0	};
	union{
		float a[10];
		float c[10];
	} real;
	real.c[5]=0.;

	for(i=0;i<10;i++)
	{
		real.a[5]=i;
		b[i]=i*10.;
	}
	if(b[1]<0) printf("%7.2d \n",real.c);
	for(i=0;i<10;i++) printf("%7.2f ",b[i]);
	printf("\n");
	exit (0);
}
