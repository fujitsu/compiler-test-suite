#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,k=0;
	for(i=1;i<=13;i=13-i)
	{
		k++;
		if(k>13) break ;
	}
	printf("k=%d \n",k);
	exit (0);
}
