#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,a[5]={
		1,2,3,4,5	};
	for(j=0;j<5;j++)
	{
		for(i=a[j];i<5;i++)
		{
			printf("*** i = %d ***\n",i);
		}
	}
	exit (0);
}
