#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(short int *j);








int main()
{
	short int j;
	int i,k=0 ;
	func(&j);
	for(i=10;i>=j+4;i-=1)
	{
		if (i==5) j=3 ;
		k++;
	}
	printf("k=%d \n",k);
	exit (0);
}
int func(j)
short int *j;
{
	*j=-10;
}
