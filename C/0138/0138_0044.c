#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10],c[10],d[10],e[10];
	static int i;
	for(i=0;i<10;i++)
	{
		c[i]=(i+1);
	}
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
	for(i=0;i<10;i++)
	{
		e[i]=a[c[i]-1];
		d[c[i]-1]=a[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%d]= %2ld    b[%d]= %2ld   ",i,a[i],i,b[i]);
		printf(" c[%d]= %2ld    d[%d]= %2ld   ",i,c[i],i,d[i]);
		printf(" e[%d]= %2ld  \n",i,e[i]);
	}
	exit (0);
}
 
