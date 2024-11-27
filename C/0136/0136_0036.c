#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *);








int main()
{
	int i,k=0 ;
	int n ;
	func(&n);
	for(i=n++;  i<10 ; i++) {
		k++;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
int func(n)
int *n ;
{
	*n=1 ;
}
