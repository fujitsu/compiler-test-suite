#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j,k=0;
	j=2 ;
	for (i=0 ; i<10 ; i=i+j)
	{
		if(i==5) j=3  ;
		k++ ;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
