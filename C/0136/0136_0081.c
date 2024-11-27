#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *l);








int main()
{
	int i,k=0 ;
	int l;
	func(&l);
	for(i=10;i<=l;i-=4)
	{
		k++;
		if(k>30) break;
	}
	printf("k=%d \n",k);
	exit (0);
}
int func(l)
int *l;
{
	*l=30;
}
