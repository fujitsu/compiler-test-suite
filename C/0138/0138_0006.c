#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[256],b[256];
	long int i;
	for(i=0;i<256;i++){
		b[i]=256;
	}
	for(i=0;i<256;i++)
	{
		a[i]=b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<256;i++){
		printf(" %d\n",a[i]);
	}
	exit (0);
}
