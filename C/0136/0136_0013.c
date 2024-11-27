#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j ;
	int k,l=1 ;
	k=j=0 ;
	j=j+2*j-2+3 ;
	l=l+2*l-2+3 ;
	for (i=1 ; i<j+l ; i++)
		k+=1;
	printf("k=%d \n",k) ;
	exit (0);
}
