#include <stdlib.h>
#include <stdio.h>
#include <math.h>








int main()
{
	int i,k=0 ;
	int a[5]={
		1,2,3,4,5	};
	i=1 ;
loop:
	a[i]=a[i-1]*a[i];
	k++; 
	i++;
	if(i<=4) goto loop ;
	printf("FACT(5)=%d \n  k=%d \n",a[4], k);
	exit (0);
}
