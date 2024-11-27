#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j,k ;
	k=0 ;
	j=0 ;
	for (i=0 ; i<10 ; i=i+j)
	{
		k++ ;
		if(k>15) break;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
