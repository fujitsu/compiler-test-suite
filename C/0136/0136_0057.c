#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(int *j);








int main()
{
	int j,k=0;
	int i ;
	func(&j);
	for(i=10;i>=j-4;i-=1)
	{
		if (i==5) j=3 ;
		k++;
	}
	printf("k=%d \n",k);
	exit (0);
}
int func(j)
int *j;
{
	*j=10;
}
