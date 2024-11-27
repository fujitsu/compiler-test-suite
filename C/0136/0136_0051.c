#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);








int main()
{
	int i,j,l;
	int k;
	func(&j);
	k=0 ;
	l=0 ;
	for (i=2147483647 ; i>j ;i=i+l)
	{
		k+=1;
		if(k>100)break;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
int *j;
{
	*j=-1;
}
