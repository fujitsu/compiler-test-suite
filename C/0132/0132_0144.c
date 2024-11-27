#include <stdlib.h>
#include <stdio.h>
#include <math.h>
float a[10];
int main()
{
	int i;
	float b[10]={
		0,1,2,3,4,5,6,7,8,9	};
	for(i=0;i<10;i++)
	{
		a[i]=b[i];
	}
	for(i=0;i<10;i++) printf("%5.2f \n",a[i]);
	exit (0);
}
