#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,j,k=0;
	int a[10] = {
		1,2,3,4,5,6,7,8,9,10	};
	for(j=a[5]+3, i=0 ; i<j ; i++)
	{
		printf(" a=%d ",a[i]) ;
		k++;
	}
	printf("\n k=%d \n",k) ;
	exit (0);
}
