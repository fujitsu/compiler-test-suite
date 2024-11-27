#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0	},
	b[10]={
		10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0	},
	t;
	long int i,n;
	n = (long int)(a[0]*10);
	for(i=0;i<n-1;i++)
	{
		t = a[i] + i;
		a[i+1] = t + a[i];
	}
	for(i=0;i<n-1;i++)
	{
		t = b[i] * i;
		b[i+1] = t + b[i];
	}
	for(i=0;i<10;i++)
		printf("a[%ld]=> %f   b[%ld]=> %f\n",i,a[i],i,b[i]);
	exit (0);
}
