#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float  a[10]={
		1,1,1,1,1,1,1,1,1,1	};
	int i;
	union {
		float b;
		float c;
	} real4;
	union {
		int   m;
		int   n;
	} int4;

	for(i=0;i<10;i++)
	{
		a[i]=i;
		real4.b=a[i];
		int4.m=i*10;
	}
	if(a[9]!=9) printf("%7.2f \n",real4.c);
	if(a[9]!=9) printf("%d \n",int4.n,real4.c);
	for(i=0;i<10;i++) printf("%7.2f ",a[i]);
	printf("\n");
	exit (0);
}

