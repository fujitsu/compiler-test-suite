#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int int1[10]={
		0,0,0,0,0,0,0,0,0,0	},
	int2[10]={
		1,1,1,1,1,1,1,1,1,1	};
	int i,n={
		1	};
	for(i=0;i<10;i++)
	{
		int1[n]=int2[i];
	}
	for( i=0;i<10;i++)
	{
		int1[n]=i;
	}
	for(i=0;i<10;i++) printf("%d ",int1[i]);
	printf("\n");
	for(i=0;i<10;i++) printf("%d ",int2[i]);
	printf("\n");
	exit (0);
}
