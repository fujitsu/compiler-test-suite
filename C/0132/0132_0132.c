#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10],b[50];
	int i;
	for(i=0;i<10;i++) a[i]=1.;
	for(i=0;i<50;i++) b[i]=(float)i;
	for(i=0;i<4;i++)
	{
		a[i]=a[i+5]+b[i];
	}
	for(i=0;i<10;i++) printf("%5.2f ",a[i]);
	printf("\n");
	exit (0);
}
