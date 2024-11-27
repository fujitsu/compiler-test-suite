#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10],b[10],tmp ;
	int i ;
	for(i=0;i<10;i++)
	{
		a[i] = i + 1 ;
		tmp  = a[i] ;
		if(a[i] == i+1)
		{
			tmp = tmp + a[i] ;
		}
		tmp = tmp + i ;
		tmp = tmp * a[i] ;
	}
	printf("tmp => %f  \n",tmp) ;
	exit (0);
}
