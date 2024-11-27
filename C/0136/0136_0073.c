#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j,k ;
	j=-1 ;
	k=0 ;
	for (i=10 ; i>9 ; i=i+(j))
		k++ ;
	printf("k=%d \n",k) ;
	exit (0);
}
