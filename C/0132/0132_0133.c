#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[350],b[200];
	for( i=0;i<350;i++) a[i]=(float)i;
	for( i=0;i<200;i++) b[i]=0.;
	for( i=0;i<200;i++)
	{
		a[i]=a[i+150]+b[i];
	}
	for(i=0;i<350;i++) printf("%7.3f\n",a[i]);
	exit (0);
}
