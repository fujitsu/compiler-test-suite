#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *p);








union type {
	int i ;
	int j ;
	int l ;
}main()
{
	union type a ;
	int  k ;
	a.l=1 ;
	k=0 ;
	for (func(&a.i)  ; a.i<10 ; a.i++)
		k+=1;
	printf("k=%d \n",k) ;
	exit (0);
}

int func(p)
int *p ;
{
	*p=3 ;
}
