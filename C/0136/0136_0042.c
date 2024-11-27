#include <stdlib.h>
#include <stdio.h>
#include <math.h>








union type {
	int i ;
	int j ;
	int l ;
}main()
{
	union type a ;
	int  k ;
	k=0 ;
	for (a.i=1,a.j=6 ; a.i<10 ; a.i++)
		k+=1;
	printf("k=%d \n",k) ;
	exit (0);
}
