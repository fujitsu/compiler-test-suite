#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(float *l);








int main()
{
	int i,k=0 ;
	float l;
	func(&l);
	for(i=10;100>i;i=l+i)
		k++;
	printf("k=%d \n",k);
	exit (0);
}
int func(l)
float *l;
{
	*l=10.8;
}
