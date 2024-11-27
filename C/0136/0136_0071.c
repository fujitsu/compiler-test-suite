#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *l);








int main()
{
	int i,j,k,l;
	j=-1 ;
	k=0 ;
	func(&l) ;
	for (i=10 ; i<l ; i=i-j)
		k++ ;
	printf("k=%d \n",k) ;
	exit (0);
}
int func(l)
int *l;
{
	*l=100;
}
