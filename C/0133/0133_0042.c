#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a[10][10];
	float s=5.0;
	long int i,j;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[j][i]=1.0;
		}
	}
	printf("''\n");
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a[j][i]=s;
		}
		s=a[j][1]+s;
	}
	printf("s=%g\n",s);
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a[%ld][%ld]=%g\n",j,i,a[j][i]);
		}
	}
	exit (0);
}
