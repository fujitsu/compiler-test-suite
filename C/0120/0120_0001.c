#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int m,k,i;
	float a[10];
	float b[]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0	};
	float c[]={
		1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0	};
	m=1;
	k=1;
	for (i=0;i<10;i++)
	{
		a[i]=b[i*m+k]+c[i];
		printf("%12.6f\n",a[i]);
	}
	exit (0);
}
