#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j,k=0;
	i=0 ;
	for (i=0 ; i<10 ; i++)
	{
		if(i==5) i=10 ;
		k++;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
