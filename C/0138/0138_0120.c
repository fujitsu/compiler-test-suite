#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#include "000.h"

int main()
{

	long int a[10],b[10],c[10];
	long int j,i;
	for(i=0;i<10;i++){
		a[i]=10;
	}
	for(i=0;i<10;i++)
	{
		j=1+i;
		b[i]=a[i]+1.0;
		c[i]=a[i]+1.0+j;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf(" %d %d %d %d ",a[i],b[i],c[i],j);
	}
	printf("\n");
	exit (0);
}
 
