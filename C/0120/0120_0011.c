#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float i,j;

	for (i=0;i<300;i=i+10)
	{
		j=5.0*(i-32.0)/9.0;
		printf("%4.1f\t%4.1f\n",i,j);
	}
	exit (0);
}
