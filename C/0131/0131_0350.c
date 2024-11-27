#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,n;
	int a[1000];
	n=0;
	for(i=1,j=512;i<=j;i*=2)
	{
		a[n]=i;
		printf("*** a[%d] = %d *** \n",n,a[n]);
		n++;
	}
	exit (0);
}
