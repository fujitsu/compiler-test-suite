#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	float b[10]={
		3,3,3,4,6,3,2,5,7,8	};
	int i;
	for(i=0;i<10;i++)
	{
		a[i]=a[i]+b[i];
	}
	for(i=0;i<10;i++) printf("%5.2f ",a[i]);
	printf("\n");
	exit (0);
}
