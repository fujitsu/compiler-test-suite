#include <stdlib.h>
#include <math.h>

#include<stdio.h>
int main()
{
	int    i;
	float a[]={
		1.0,2.0,3.0,4.0,5.0	};
	float b[]={
		6.0,7.0,8.0,9.0,5.0	};

	for (i=1;i<5;i++)
		a[i]=a[i-1]*b[i];

	printf("%12.6f\n",a[1]);
	exit (0);
}
