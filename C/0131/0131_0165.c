#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#undef pow

int main()
{
	double pow(),a[10],b[10],x=3.3 ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = (i + 1) * 2 / 3 ;
		b[i] = pow(a[i],x) ;
	}
	for(i=0;i<10;i++)
	{
		printf("b[%d] => %15.5f \n",i,b[i]) ;
	}
	exit (0);
}
