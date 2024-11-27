#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	float s;
	float a[]={
		1.0,2.0,7.0,4.0,6.0,3.0,5.0,9.0,6.0,1.0	};
	float b[]={
		-9.0,8.0,5.0,8.0,-5.0,3.0,7.0,4.0,6.0,2.0	};

	s=0.0;
	for(i=0;i<10;i++)
	{
		s=s+a[i]*b[i];
	}
	printf("%12.4f\n",s);
	exit (0);
}

