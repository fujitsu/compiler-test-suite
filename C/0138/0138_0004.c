#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[1024],b[1024];
	long int i;
	for(i=0;i<1024;i++){
		b[i]=1024;
	}
	for(i=0;i<1024;i++)
	{
		a[i]=b[i];
	}
	printf("  *****  *****\n");
	for(i=0;i<1024;i++){
		printf(" %d ",a[i]);
	        if (i%4 == 0  && i!=0) printf("\n");
        }
	printf("\n");
	exit (0);
}
