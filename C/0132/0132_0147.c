#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10]={0,0,0,0,0,0,0,0,0,0},
              b[10]={1,1,1,1,1,1,1,1,1,1},
              c[10]={2,2,2,2,2,2,2,2,2,2};
	int i,j;
	j=1;
	for(i=0;i<10;i++)
	{
		a[i]=b[i]+c[i];
		b[i]=a[j]-c[i];
		c[i]=b[j]+b[i];
		a[j]=b[i]+c[j];
	}
	for(i=0;i<10;i++) printf("%5.2f ",a[i]);
	printf("\n");
	exit (0);
}


