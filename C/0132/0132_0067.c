#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0	},
	b[10]={
		10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0	},
	s,t;
	long int i,j,n;
	n = (long int)(a[0]*10);
	for(i=0;i<n-1;i++)
	{
		for(j=0;j<n-1;j++)
		{
			s = b[j] + j;
			b[j+1] = s + b[j];
		}
		t = a[i] + i;
		a[i+1] = t + a[i];
	}
	for(i=0;i<10;i++)
		printf("a[%ld]=> %f   b[%ld]=> %f\n",i,a[i],i,b[i]);
	printf("t => %f   s => %f\n",t,s);
	exit (0);
}
