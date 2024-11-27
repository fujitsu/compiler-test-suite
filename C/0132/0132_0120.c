#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	float  a[10]={
		0,0,0,0,0,0,0,0,0,0	},
	s;
	int n={
		5	},
	k={
		0	},
	i;
	for(i=1;i<=10;i++)
	{
		k=k+1;
		a[n]=k;
	}
	s=a[n];
	for(i=0;i<10;i++) printf("%7.2f ",a[i]);
	printf("k= %d s= %7.2f \n",k,s);
	exit (0);
}
