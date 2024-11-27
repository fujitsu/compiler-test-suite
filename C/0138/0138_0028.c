#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[256],b[256],c[256],d[256];
	static int i,j;
	for(i=0;i<256;i++)
	{
		a[i]=1;
	}
	for(i=0;i<256;i++)
	{
		b[i]=2;
	}
	for(i=0;i<256;i++)
	{
		c[i]=3;
	}
	for(j=0;j<10;j++)
	{
		d[j]=a[j]+b[j]+c[j]+2;
	}
	printf("  *****  *****\n");
	printf(" a[1]= %ld  b[1]= %ld ",a[1],b[1]);
	printf(" c[1]= %ld  d[1]= %ld \n",c[1],d[1]);
	exit (0);
}
 
