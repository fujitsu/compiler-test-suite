#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[40],b[40],c[40],d[40];

	long int i;
	for(i=0;i<10;i++){
		a[i] = -1.0;
		b[i] =  4.0;
		c[i] = -5.0;
		d[i] =  1.0;
	}
	for(i=10;i<20;i++){
		a[i] =  2.0;
		b[i] = -6.0;
		c[i] =  7.0;
		d[i] = -3.0;
	}
	for(i=20;i<30;i++){
		a[i] = -3.0;
		b[i] =  8.0;
		c[i] = -9.0;
		d[i] =  5.0;
	}
	for(i=30;i<40;i++){
		a[i] =  2.0;
		b[i] = -4.0;
		c[i] =  3.0;
		d[i] = -1.0;
	}
	a[0] = 5.0;
	d[1] = a[1] + c[0];
	for(i=1;i<40;i++)
	{
		a[i] = b[i] - c[i-1];
	}
	for(i=1;i<39;i++)
	{
		d[i] = a[i-1] + 1.0;
	}
	for(i=1;i<40;i++)
	{
		c[i] = b[i] - 1.0 + (i+1);
		b[i] = -(i+1) + 1.0;
	}
	for(i=1;i<39;i++)
	{
		d[i] = -b[i-1] + 1.0;
	}
	for(i=0;i<40;i++)
	{
		printf("d[%ld] = %g , a[%ld] = %g\n",i,d[i],i,a[i]);
	}
	for(i=0;i<40;i++)
	{
		printf("b[%ld] = %g , c[%ld] = %g\n",i,b[i],i,c[i]);
	}
	exit (0);
}
