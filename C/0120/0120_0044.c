#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i,k1,k2,k3;
	for(i=0;i<10;i++)
	{
		k1=i;
		k2=i*i;
		k3=k2*i;
		printf("%10d %10d %10d\n",k1,k2,k3);
	}
	exit (0);
}

