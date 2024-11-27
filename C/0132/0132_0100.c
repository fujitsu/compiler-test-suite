#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (double a[], double b[], double c[]);

int main (void)
{
	double a[20],b[20],c[20];
	long int i,n=1,m=100;
	for(i=0;i<20;i++)
	{
		a[i]=(double)(i);
		b[i]=(double)(n++);
		c[i]=(double)(m);
		m-=2;
	}
	sub(a,b,c);
	for(i=0;i<20;i++)
	{
		printf(" a= %g  b= %g  c= %g \n",a[i],b[i],c[i]);
	}
	exit (0);
}
int sub (double a[], double b[], double c[])
{
	long int i;
	long int x=0,y=2,z=100;
	for(i=0;i<20;i++){
		a[i]=a[i]+(x++);
	}
	for(i=0;i<20;i++){
		b[i]=b[i]+y;
		y+=2;
	}
	for(i=0;i<20;i++){
		c[i]=c[i]+z;
		z-=3;
	}
}
