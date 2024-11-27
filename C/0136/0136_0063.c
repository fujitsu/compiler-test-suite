#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);








int main()
{
	int i,j;
	int k=0;
	func(&j);
	for (i=j ; i>2 ;i=i-2)
		k+=1;
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
int *j;
{
	*j=100;
}
