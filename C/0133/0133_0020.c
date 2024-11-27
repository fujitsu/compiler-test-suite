#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long a[20],b[20],c[20];
	long int i;
	for(i=0;i< 20;i++){
		a[i]=1;
	}
	for(i=0;i< 20;i++){
		b[i]=2;
	}
	for(i=0;i< 20;i++){
		c[i]=3;
	}
	for(i =0;i < 10;i++)
	{
		a[i]=10-i;
	}
	for(i =0;i < 10;i++)
	{
		b[i]=a[i+1];
	}
	for(i =0;i < 10;i++)
	{
		c[i]=a[11-i];
	}
	for(i=0;i<20;i++){
		printf("a[%ld] => %ld  b[%ld] => %ld  c[%ld] => %ld\n",i,a[i],
		    i,b[i],i,c[i]);
	}
	exit (0);
}
