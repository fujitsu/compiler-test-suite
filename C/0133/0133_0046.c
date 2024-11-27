#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10];
	float x=4.0;
	long int i,j;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[j][i]=8.4;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			if(i<6)
			{
				a[j][i]=a[j][i]-x;
			}
			else
			{
				a[j][i]=a[j][i]+x;
			}
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g\n",j,i,a[j][i]);
		}
	}
	exit (0);
}
