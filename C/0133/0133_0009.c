#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1009(float *a, float *b, float *c, long int n);

int main()
{
	float a[10],b[10],c[10];
	long int i;
	for(i=0;i< 10;i++)
	{
		a[i]=0.0;
	}
	for(i=0;i< 10;i++)
	{
		b[i]=1.0;
	}
	s1009(&a,&b,&c,10);
	for(i=0;i< 10;i++)
	{
		printf("a[%ld] => %10.3f  b[%ld] => %10.3f  c[%ld] => %10.3f\n",i,
		    a[i],i,b[i],i,c[i]);
	}
	exit (0);
}
int s1009(float *a, float *b, float *c, long int n)
{
	long int i;
	for(i=0;i< n;i++)
	{
		c[i]=a[i]+b[i];
		a[i]=a[i]*1.5;
	}
	return 0;
}
