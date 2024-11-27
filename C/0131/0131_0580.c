#include <stdlib.h>
#include <stdio.h>

#include <math.h>
int sub1(double b[]);
int main()
{
	double       a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	double       b[10]={
		5,6,7,8,9,2,2,6,8,9	};
	double       c[10]={
		2,2,2,1,1,1,2,2,2,1	};
	int i ;
	b[2]=2;
	sub1(b);
	for (i=0;i<10;i++)
	{
		a[i]=b[i]+c[i];
	}
	for (i=0;i<10;i++) printf("%f\n",a[i]);
	exit (0);
}
int sub1(b)
double       b[];
{
	int i;
	double       x[10]={
		0,0,0,0,0,0,0,0,0,0	};
	double       y[10]={
		2,2,2,2,2,2,2,2,2,2	};
	for (i=0;i<10;i++)
	{
		x[i] = fmod(b[i],y[3]);
	}
	for (i=0;i<10;i++) printf("%f\n",x[i]);
}
