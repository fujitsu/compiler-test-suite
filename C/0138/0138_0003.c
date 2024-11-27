#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10];
	long int i,i1,i2,j,k;
	for(i=0;i<10;i++)
	{
		for(j=0;j<10;j++)
		{
			for(k=0;k<10;k++)
			{
				a[k]=0;
			}
		}
	}
	printf("  *****  *(1)*\n");
	for(i=0;i<10;i++){
		printf(" %ld ",a[i]);
	}
	for(i1=0;i1<2;i1++)
	{
		for(i2=0;i2<2;i2++)
		{
			a[i2]=1;
		}
	}
	printf("  *****  *(2)*\n");
	for(i=0;i<10;i++){
		printf(" %ld ",a[i]);
	}
	printf("\n");
	exit (0);
}
