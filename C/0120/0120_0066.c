#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float total,ave;
	float temp[]={
		18.2,30.5,18.4,12.4,13.3,25.2,31.2	};
	int i;
	total=0.0;
	for(i=6;i>=0;i--)
	{
		total += temp[i];
	}
	ave = total / 7;
	printf("%5.3f\n",ave);
	exit (0);
}
