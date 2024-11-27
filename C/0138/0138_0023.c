#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10],c[10];
	long int i;
	for(i=0;i<10;i++)
	{
		c[i]=0;
	}
	for(i=0;i<10;i++)
	{
		a[i]=c[i];
		b[i]=c[i]+(a[i]+1);
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%d]=>%d  b[%d]=>%d",i,a[i],i,b[i]);
		printf("  c[%d]=>%d \n",i,c[i]);
	}
	exit (0);
}
 
