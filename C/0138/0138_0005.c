#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[512],b[512];
	long int i;
	for(i=0;i<512;i++){
		b[i]=512;
	}
	for(i=0;i<512;i++)
	{
		a[i]=b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<512;i++){
		printf(" %d\n",a[i]);
	}
	exit (0);
}
