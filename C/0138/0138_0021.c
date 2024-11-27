#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10],b[10],c[10];
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=(i+1)*1.0;
		b[i]=a[i]+(i+1);
		c[i]=b[i]+a[i]+b[i]+b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]=>%2ld  b[%ld}=>%2ld ",i,a[i],i,b[i]);
		printf(" c[%ld]=>%2ld \n",i,c[i]);
		exit (0);
	}
}
