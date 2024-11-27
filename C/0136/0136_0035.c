#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,k=0;
	long int  j ;
	k=0;
	for(i=1 ;i<10 ; i++) {
		if (i==2) break ;
		k=k+1 ;
	}
	printf("k=%d \n",k) ;

	printf("i=%d \n",i) ;
	exit (0);
}
