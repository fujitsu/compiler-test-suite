#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int j,k=0 ;
	int i ;
	j=i=2 ;
	i=j-1 ;
	j=i*i-5+j*8;
	for(i=0;i<=10 ;i+=1,j=j-i*2+5)
		k++;
	printf("k=%d \n",k);
	exit (0);
}
