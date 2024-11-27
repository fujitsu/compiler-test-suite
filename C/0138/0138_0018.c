#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10];
	long int i;
	float b,c;
	for(i=0;i<10;i++)
	{
		b=(i+1);
		a[i]=(i+1);
		c=(i+1)*2.0;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %2ld b= %f",i,a[i],b);
		printf(" c= %f \n",c);
	}
	exit (0);
}
