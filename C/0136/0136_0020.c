#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,k=0;
	int a[10] = {
		1,2,3,4,5,6,7,8,9,10	};
	for(i=0 ; i<10; i=i+a[3])
	{
		printf(" a=%d",a[i]) ;
		k++;
	}
	printf("\n k=%d \n",k) ;
	exit (0);
}
