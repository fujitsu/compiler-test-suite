#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[100],b[100];
	int i;
	for( i=0;i<100;i++) a[i]=(float)i;
	for( i=0;i<100;i++) b[i]=1.;
	for( i=4;i<100;i++)
	{
		a[i]=a[i-4]+b[i];
	}
	for(i=0;i<100;i++) printf("%7.4f ",a[i]);
	printf("\n");
	exit (0);
}
