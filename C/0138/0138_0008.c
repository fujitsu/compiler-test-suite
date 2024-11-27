#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[64],b[64];
	long int i;
	for(i=0;i<64;i++){
		b[i]=64;
	}
	for(i=0;i<64;i++)
	{
		a[i]=b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<64;i++){
		printf(" %d ",a[i]);
	}
	printf("\n");
	exit (0);
}
