#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j=0 ;
	int k;
	k=0 ;
	for (i=2147483647; i>-1 ;i=i+j)
	{
		k+=1;
		if (k>100) break;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
