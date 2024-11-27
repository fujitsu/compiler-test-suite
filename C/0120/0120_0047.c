#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int k,j,i;
	k=j=0;
	for(i=1;i<100;i++)
	{
		if(i%3==0) k=k+1;
		if(i%5==0) j=j+1;
	}
	printf("%4d %4d\n",k,j);
	exit (0);
}
