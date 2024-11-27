#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[128],b[128];
	long int i;
	for(i=0;i<128;i++){
		b[i]=128;
	}
	for(i=0;i<128;i++)
	{
		a[i]=0;
	}
	printf("  *****  *****\n");
	for(i=0;i<128;i++){
		printf(" %d\n",a[i]);
	}
	exit (0);
}
