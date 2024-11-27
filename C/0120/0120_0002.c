#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int sub();
double ext[]={
	0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0};
int main()
{
	sub();
	exit (0);
}
int sub()
{
	double *p;
	int  i,j;
	double a[]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,11.0	};
	p=ext;
	for(i=0;i<10;i++)
	{
		p[i]=a[i];
	}
	for(j=0;j<10;j++)
	{
		printf("%10.5f\n",p[j]);
	}
}
