#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[20]={
				1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1		};
	long int b[20]={
				2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2		};
	long int c[20]={
				3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3		};
	long int d[20]={
				3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3		};
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=10-i+1;
		b[i]=(i+1)*(i+1);
	}
	for(i=0;i<10;i++)
	{
		c[i]=b[a[i]];
	}
	for(i=0;i<10;i++)
	{
		d[i]=b[11-a[i]];
	}
	for(i=0;i<20;i++)
	{
		printf("a[%ld]=%ld , b[%ld]=%ld , c[%ld]=%ld , d[%ld]=%ld\n",
		    i,a[i],i,b[i],i,c[i],i,d[i]);
	}
	exit (0);
}
