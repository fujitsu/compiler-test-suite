#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i,j,n;
	float a[10],b[10];
	for(i=0;i<10;i++) a[i]=(float)i;
	for(i=0;i<10;i++) b[i]=1.;
	for(i=0;i<10;i++)
	{
		n=(int)a[i];
		for(j=0;j<10;j++)
		{
			a[n]=a[j]+b[j];
		}
		for(j=0;j<10;j++) printf("%7.2f ",a[i]);
		printf("\n");
	}
	exit (0);
}
