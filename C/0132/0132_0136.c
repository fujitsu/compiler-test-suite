#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[10],b[10];
	for(i=0;i<10;i++) a[i]=1.;
	for(i=0;i<10;i++) b[i]=2.;
	for(i=0;i<10;i++)
	{
		a[0]=a[i]+b[i];
	}
	for(i=0;i<10;i++) printf("%7.2f \n",a[i]);
	printf("\n");
	exit (0);
}
