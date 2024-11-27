#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(long int *j);









int main()
{
	long int i,j;
	int      k;
	k=0 ;
	func(&j) ;
	for (i=2147483646 ; i<=j ;i=i+1){
		if(k>1)break;
		k+=1; 
	}
	printf("k=%d \n",k) ;
	exit (0);
}
int func(j)
long int *j;
{
	*j=2147483647;
}
