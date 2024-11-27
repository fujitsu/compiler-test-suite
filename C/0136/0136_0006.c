#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);









int main()
{
	short int i ;
	int j=1,k=0,l=1;
	func(&j) ;
	for(i=1 ; i<j; i=i+l )
	{
		k++ ;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
int *j;
{
	*j=100;
}
