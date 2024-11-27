#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,k=0;
	for (i=10 ; i<100 ;i+=0.8)
	{
		k+=1;
		if(k>100) break;
	}
	printf("k=%d \n",k) ;
	exit (0);
}
