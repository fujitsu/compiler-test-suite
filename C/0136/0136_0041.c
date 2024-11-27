#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	short int j ;
	int i,k=0;
	j=i=2 ;
	i=j-1 ;
	j=i*i-10+j*8;
	for(i=j;i<=10;i+=1)
		k++;
	printf("k=%d \n",k);
	exit (0);
}
