#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[10]={
		1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0	},
	b[10]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	};
	for( i=5;i<10;i+=1)
	{
		a[i]=a[i-5]+b[i];
	}
	for(i=0;i<10;i++)printf("%10.5f \n",a[i]);
	exit (0);
}
