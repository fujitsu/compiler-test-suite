#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(float *l);








int main()
{
	int i,k=0,a[91];
	float l;
	func(&l);
	for(i=0;i<=90;i+=l)
	{
		a[i]=10;
		k++;
	}
	printf("k=%d \n",k);
	exit (0);
}
int func(l)
float *l;
{
	*l=1.9;
}
