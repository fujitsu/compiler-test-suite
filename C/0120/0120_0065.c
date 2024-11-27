#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	float temp[]={
		15.5,30.2,21.4,18.4,15.4,23.2,30.2	};
	float ave,total=0.0;
	for(i=0;i<7;i++)
	{
		total+=temp[i];
	}
	ave=total/7.0;
	printf("%5.2f\n",ave);
	exit (0);
}
