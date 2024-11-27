#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);








int main()
{
	int i,j,k ;
	k=0 ;
	func(&j);
	for (i=1 ; i<j ; i=i+1)
		k++ ;
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
int *j;
{
	*j=100;
}
