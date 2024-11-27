#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int x[20],y[20],a[10],b[10];
	long int n=10;
	long int m=3;
	long int i;
	for(i=0;i<20;i++){
		x[i]=0;
	}
	for(i=0;i<20;i++){
		y[i]=0;
	}
	for(i=0;i<n;i++)
	{
		x[i]=(i+1)*(i+1);
		y[i+n]=x[i];
	}
	for(i=0;i<n;i++)
	{
		a[i]=x[i+1];
		b[i]=y[i];
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%ld , b[%ld]=%ld\n",i,a[i],i,b[i]);
	}
	for(i=0;i<20;i++)
	{
		printf("x[%ld]=%ld , y[%ld]=%ld\n",i,x[i],i,y[i]);
	}
	exit (0);
}
