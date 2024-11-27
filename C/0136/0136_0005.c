#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(short int *j);








int main()
{
	short int i,j,k=0;
	func(&j) ;
	for(i=1 ; i<j; i++ )
	{
		k++;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
short int *j;
{
	*j=100;
}
