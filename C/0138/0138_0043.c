#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10],d[10];
	static int i;
	for(i=0;i<10;i++)
	{
		a[i]=1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i]+1;
	}
	for(i=0;i<10;i++)
	{
		d[i]=a[i]+b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%d]= %ld  b[%d]= %ld ",i,a[i],i,b[i]);
		printf(" d[%d]= %ld \n",i,d[i]);
	}
	exit (0);
}
 
