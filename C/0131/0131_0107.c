#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10],b[10],tmp1,tmp2 ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		tmp1 = a[i] ;
		tmp1 = i * tmp1 ;
		tmp2 = tmp1 ;
		b[i] = a[i] + i ;
		tmp2 = b[i] * tmp2 ;
		tmp1 = tmp1 * tmp2 ;
		tmp2 = tmp1 * tmp2 ;
	}
	printf("tmp1 => %f  tmp2 => %f \n",tmp1,tmp2) ;
	exit (0);
}
