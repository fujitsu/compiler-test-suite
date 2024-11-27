#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[10]={
		1,1,1,1,1,1,1,1,1,1	};
	for(i=0;i<10;i++)
	{
		if(i>5) a[i]=(float)i;
	}
	for(i=0;i<10;i++) printf("%5.2f \n",a[i]);
	exit (0);
}
