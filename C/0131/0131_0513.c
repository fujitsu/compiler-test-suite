#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i,n=1;
	long int a[10],b[10],c[10],d[10];
	for(i=0;i<10;i++){
		a[i] = 0 ;
		b[i] = 0 ;
		c[i] = 0 ;
		d[i] = 0 ;
	}
	for(i=0;i<10;i++){
		a[i<n*9] = i ;
		b[i<=9] = i ;
	}
	for(i=9;i>=0;i--){
		c[i>0] = i ;
		d[i>=5+n-1] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld , b[%d] = %ld \n",i,a[i],i,b[i]);
	}
	printf(" \n");
	for(i=0;i<10;i++){
		printf(" c[%d] = %ld , d[%d] = %ld \n",i,c[i],i,d[i]);
	}
	exit (0);
}
