#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	short int i,j,k=0 ;
	j=i=2 ;
	i=j-1 ;
	j=i;
	for(i=1;i<=10;i+=j)
		k++;
	printf("k=%d \n",k);
	exit (0);
}
