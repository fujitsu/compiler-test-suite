#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[20],b[20],c[10];
	long int m=3;
	long int n1=10;
	long int n2=20;
	long int i;
	for(i =0;i < n2;i ++)
	{
		a[i]=i;
		b[i]=i*i;
	}
	for(i =0;i < n1;i ++)
	{
		c[i]=a[i+3];
	}
	for(i =0;i < n1;i ++)
	{
		a[1+i]=b[i];
	}
	for(i =0;i < 20;i ++)
	{
		printf("a[%ld] => %ld  b[%ld] => %ld  ",i,a[i],i,b[i]);
		if(i < 10)
		{
			printf("c[%ld] => %ld\n",i,c[i]);
		}
		else
		{
			printf("\n");
		}
	}
	exit (0);
}
