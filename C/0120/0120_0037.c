#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int a[]={
		4,8,9,2,4,1,7,5,8,3	};
	int i,max;
	max=a[0];
	for(i=1;i<10;i++)
	{
		if(max<=a[i])
			max=a[i];
	}
	printf("%4d\n",max);
	exit (0);
}
