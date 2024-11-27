#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,k=0 ;
	for(i=1;i<=10;i++)
	{
		if(i==7) goto last ;
		k=k+1 ;
	}
	printf("k=%d \n",k) ;
last:
	printf("LAST\n") ;
	exit (0);
}
