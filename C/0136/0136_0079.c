#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *l);








int main()
{
	int i,k=0 ;
	int l,j;
	func(&l);
	j=-3;
	for(i=10;l<i;i-=j)
	{
		k++;
		if(k>120) break;
	}
	printf("k=%d \n",k);
	exit (0);
}
int func(l)
int *l;
{
	*l=-100;
}
