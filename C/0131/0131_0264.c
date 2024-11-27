#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=0,j=0,a[10]={
		1,2,3,4,5,6,7,8,9,10	};
	for(i+=1;i<=10;i+=2)
	{
		a[j+=1]=i;
	}
	for(i=2;i<=10;i+=3)
	{
		printf("a[%d] = %d \n",i,a[i]);
	}
	exit (0);
}
