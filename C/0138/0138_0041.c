#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10];
	static int i;
	for(i=0;i<10;i++)
	{
		a[i]=1;
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++)
	{
		printf(" a[%d]= %ld ",i,a[i]);
		if(((i+1)%5 == 0) && (i != 0)) printf("\n");
	}
	exit (0);
}
 
