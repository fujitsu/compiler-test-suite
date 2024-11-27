#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);








int main()
{
	int j,k=0;
	int i ;
	func(&j);
	for(i=0;i!=4+j;i+=j)
		k++;
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
int *j;
{
	*j=1;
}
