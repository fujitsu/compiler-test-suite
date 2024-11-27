#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[400],b[400];
	for(i=0;i<400;i++) a[i]=(float)i;
	for(i=0;i<400;i++) b[i]=-(float)i;
	for( i=151;i<400;i++)
	{
		for( i=151;i<400;i++)
		{
			a[i]=a[i-150]+b[i];
		}
	}
	for(i=0;i<400;i++) printf("%7.2f\n",a[i]);
	exit (0);
}
