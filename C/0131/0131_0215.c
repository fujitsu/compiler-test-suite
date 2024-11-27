#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int n=-6,i,a[10] ;
	for(i=0;i<10;i++)
	{
		a[i-n-2*3] = i ;
		a[i-2*3-n] = a[i-n/(2*3)-1] * i ;
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
