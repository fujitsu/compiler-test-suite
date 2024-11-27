#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[100],b[100],c[100],z[100];
	static unsigned long int l[100];

	long int i,j,n1=99;
	long int n;
	for(i=0;i<100;i++){
		a[i] = 0.10;
		b[i] = 0.20;
		c[i] = 0.30;
		z[i] = 0.00;
	}
	n = 0;
	for(i=0;i<100;i++){
		l[i] = 1;
		n++;
		if(n == 10){
			i+=10;
			n = 0;
		}
	}
	for(i=10;i<100;i++){
		l[i] = 0;
		n++;
		if(n == 10){
			i+=10;
			n = 0;
		}
	}
	j = 0;
	c[98] = 10.0;
	for(i=1;i<n1-2;i++)
	{
		a[i-1] = sin(b[i+2]);
	}
	for(i=1;i<n1;i++)
	{
		if (l[j]) b[i+1] = (c[i] > 4.0) ? c[i]:4.0 ;
	}
	for(i=1;i<n1;i++)
	{
		z[i] = a[i] - 1.10 + b[i];
	}
	for(i=0;i<100;i++)
	{
		printf("z[%ld] = %g , a[%ld] = %g , b[%ld] = %g\n",i,z[i],
		    i,a[i],i,b[i]);
	}
	exit (0);
}
