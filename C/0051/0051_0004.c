#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
{
	long int a[100],b[100],c[100];
	long int i,j;

	for(i=0;i<100;i++) {
		a[i]=1;
		b[i]=1;
		c[i]=1;
	}
	printf("%d%d%d",a[99],b[99],c[99]);
	printf("\n");
	exit (0);
}
