#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10],c[10];
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=(i+1);
		b[i]=a[i]+(i+1);
		c[i]=b[i]+a[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%2ld b[%ld]=%2ld c[%ld]=%2ld \n",i,a[i],i,b[i],i,c[i]);
	}
	exit (0);
}
