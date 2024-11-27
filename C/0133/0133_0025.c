#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10]={
		1,2,3,4,5,6,7,8,9,10	},
	b[10],c[10];
	long int n=10;
	short int i;
	for(i=0;i<n;i++)
	{
		b[i]=5;
		c[i]=a[i]+b[i];
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%ld , b[%ld]=%ld , c[%ld]=%ld\n",i,a[i],i,
		    b[i],i,c[i]);
	}
	exit (0);
}
