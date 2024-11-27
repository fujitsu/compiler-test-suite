#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10],b[10][10];
	float x[10];
	long int i,j;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[j][i]=1.0;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			b[j][i]=2.4;
		}
	}
	printf("''\n");
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=b[j][i];
			x[i]=a[4][i]+i;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g , b[%ld][%ld]=%g\n",j,i,a[j][i],
			    j,i,b[j][i]);
		}
	}
	exit (0);
}
