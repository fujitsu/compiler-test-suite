#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10],b[10];
	static int i;
	for(i=0;i<10;i++)
	{
		a[i]=1;
	}
	for(i=0;i<10;i++)
	{
		b[i]=a[i]+1;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[i]= %ld  b[i]= %ld \n",i,a[i],i,b[i]);
	}
	exit (0);
}
 
