#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int     i,j,k,l ;
	float a[]={
		3.0,2.0,8.5,7.4,9.5,4.2,4.7,8.9,5.4,1.0	};
	float b[]={
		9.1,8.6,5.3,7.8,3.2,2.3,6.4,4.4,6.8,2.4	};
	float c[10];
	k=0 ;
	j=0 ;
	for  (i=0;i<10;i++){
		if(a[i] > 0.0) {
			c[j]=a[i] ;
			j=j+1;
		}
		else {
			a[i]=b[k] ;
			k=k+1 ;
		}
	}
	for(l=0;l<10;l++){
		printf("%12.6f\n",a[l]);
	}
	exit (0);
}
