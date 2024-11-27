#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j,m=3,n=3,a[10];
	for(i=0,j=i=n;i<10;i++)
	{
		a[m] = i + j ;
		m++;
	}
	for(m=3;m<10;m++){
		printf(" a[%d] => %d \n",m,a[m]);
	}
	exit (0);
}
