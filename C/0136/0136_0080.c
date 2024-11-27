#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *l);








int main()
{
	int i,k=0 ;
	int j,l;
	func(&l);
	j=-1;
	for(i=10;i<=l;i+=j)
	{
		k++;
		if(k>200)break;
	}
	printf("k=%d \n",k);
	exit (0);
}
int func(l)
int *l;
{
	*l=200;
}
