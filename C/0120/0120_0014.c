#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i,j;
	int a[1000],b[1000];
	j=1;
	for(i=1 ; i < 1000 ; i++ )
	{
		j++;
		a[i]=j*2-50;
		b[i]=a[i];
		
		
	}
	printf("%d6\n",b[5]);
	exit (0);
}
