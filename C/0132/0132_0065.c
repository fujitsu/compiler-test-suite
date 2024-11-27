#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0	},
	b[10]={
		10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0	},
	c[10]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	},
	t,s;
	long int i,j,n,m;
	n = (long int)(a[0]*10);
	for(i=0;i<n-1;i++)
	{
		t = a[i] + i;
		a[i+1] = t + a[i];
		m = i;
		for(j=0;j<m-1;j++)
		{
			s = b[j] + j;
			b[j+1] = s + b[j];
		}
	}
	for(i=0;i<10;i++)
		printf("a[%ld]=> %f   b[%ld]=> %f\n",i,a[i],i,b[i]);
	exit (0);
}
