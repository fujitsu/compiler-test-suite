#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float  a[]={
		1.02,7.06,5.54,9.11,6.78,8.45,2.34,4.69,3.33,4.54	};
	int i;
	for(i=0;i<10;i++)
	{
		if(a[i] < 5.0)
			a[i]=1.0;
			else
			a[i]=0.0;
	}
	for(i=0;i<10;i++)
		printf("%5.2f\n",a[i]);
	exit (0);
}
