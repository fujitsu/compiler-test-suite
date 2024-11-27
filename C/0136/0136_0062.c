#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);








int main()
{
	int i,j,k=0;
	func(&j) ;
	for (i=0 ; i<10 ; i=i+j)
	{
		k++ ;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
int *j;
{
	*j=3;
}
