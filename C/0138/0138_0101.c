#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	static unsigned long int i1[10],i3[10];
	long int i2,i;
	for(i=0;i<5;i++)
	{
		i3[i]=1;
	}
	for(i=5;i<10;i++)
	{
		i3[i]=0;
	}
	printf("\n");
	i2=1;
	for(i=0;i<10;i++)
	{
		i1[i]=i2^i3[i];
	}
	printf(" i2= %ld \n",i2);
	for(i=0;i<10;i++)
	{
		printf(" i1[%ld]= %ld  i3[%ld]= %ld \n",i,i1[i],i,i3[i]);
	}
	exit (0);
}
 
