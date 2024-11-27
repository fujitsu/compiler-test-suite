#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float a[10],b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	int i;
	for(i=0;i<10;i++)
	{
		a[i]=i;
		b[(int)a[i]]=11-i;
	}
	for(i=0;i<10;i++) printf("%7.2f ",a[i]);
	printf("\n");
	for(i=0;i<10;i++) printf("%7.2f ",b[i]);
	printf("\n");
	exit (0);
}
