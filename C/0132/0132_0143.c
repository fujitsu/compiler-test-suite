#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10]={
		9,8,7,6,5,4,3,2,1,0	};
	int i;
	for(i=0;i<10;i++)
	{
		printf("%5.2f ",a[i]);
		a[i]=a[i]+i;
		printf("%5.2f \n",a[i]);
	}
	exit (0);
}
