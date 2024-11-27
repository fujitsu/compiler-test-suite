#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *p);








int main()
{
	int i ;
	int j,k ;
	k=0 ;
	for (i=0  ; i<=func(&j) ; i++)
		k+=1;
	printf("k=%d \n",k) ;
	exit (0);
}

int func(p)
int *p ;
{
	*p=3 ;
	return(*p) ;
}
