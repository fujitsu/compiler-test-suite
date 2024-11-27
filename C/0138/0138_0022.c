#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10];
	float b[10];
	double c[10];
	long int i,j,n;
	for(i=0;i<10;i++)
	{
		a[i]=10;
	}
	j=0;
	n=10;
	for(i=0;i<n;i++)
	{
		j=j+1;
		b[i]=a[i]+1.0;
		c[i]=a[i]+1.0;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]=>%ld | b[%ld]=>%lg ",i,a[i],i,b[i]);
		printf("| c[%ld]=>%g \n",i,c[i]);
	}
	exit (0);
}
