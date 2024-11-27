#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{

	float a[]={
		-0.5,0.9,-3.8,5.9,1.8	};
	float b[]={
		0.0,0.0,0.0,0.0,0.0	};
	int i;
	for(i=0;i<5;i++)
	{
		if(a[i] <=0.0) {
			b[i]=a[i]*5.5;
		}
		else 
			b[i]=a[i]-10.5;
	}
	for(i=0;i<5;i++)
		printf("%6.2f\n",b[i]);
	exit (0);
}
