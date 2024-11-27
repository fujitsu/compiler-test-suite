#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	float a[]={
		1.9,6.4,7.8,9.9,5.4,3.8,7.4,2.7,4.4,7.9	};
	float b[10],c[10],d[10];
	for(i=0;i<10;i++)
	{
		b[i]=a[i];
		c[i]=a[i];
		d[i]=a[i];
		a[i]=b[i]+c[i];
		b[i]=c[i]*d[i];
		c[i]=a[i]+b[i]+d[i];
	}
	for(i=0;i<10;i++)
		printf("%8.3f\n",a[i]);
	exit (0);
}
