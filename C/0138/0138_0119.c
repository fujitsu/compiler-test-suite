#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#include "000.h"

int main()
{

	long int a[10],b[10],c[10],d[10];
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=0;
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i]+1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i];
		c[i]=b[i];
		d[i]=a[i]+c[i];
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i]+c[i]+d[i];
		d[i]=a[i]+c[i]+1.0;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf(" %d %d %d %d ",a[i],b[i],c[i],d[i]);
	}
	printf("\n");
	exit (0);
}
 
