#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float a[10];
	float b[]={
		1.0,2.0,8.7,3.8,5.4,7.6,8.9,3.5,1.5,8.6	};
	int i;
	int k;
	k=0;
	for(i=0;i<10;i++)
	{
		a[i]=b[i+k]+b[i];
	}
	printf("%6.2f\n",a[6]);
	exit (0);
}
