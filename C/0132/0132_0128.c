#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[10]={
		1,3,3,4,5,6,3,6,7,9	},
	b[10]={
		0,6,4,3,6,7,5,3,6,8	},
	c[10];
	float s;
	for( i=0;i<10;i++)
	{
		s=a[i]+b[i];
		c[i]=s*a[i];
	}
	printf("c= ");
	for(i=0;i<10;i++) printf("%5.2f ",c[i]);
	printf("\n");
	exit (0);
}
