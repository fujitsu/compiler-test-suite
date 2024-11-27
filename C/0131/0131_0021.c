#include <stdlib.h>
#include <math.h>
#include <stdio.h>




int main()
{
	long int i,n;
	long int a[10],b[10];
	a[0]=1;
	for(i=0;i<10;i++){
		a[i]=10-i;
		b[i]=20-i;
	}
	for(i=0;i<10;i++){
		n=a[i]+b[i];
		printf(" %d \n",n);
	}
	exit (0);
}
