#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i-1]
int main()
{
	int  i,j=5,n=3,m1=6,m2=2,m3=3;
	long int a[20];
	for(i=0;i<20;i++){
		a[i] = 0;
	}
	for(j+=n+1;j>0;j=j-(m1-(m2+m3))){
		A(j) = j;
	}
	for(i=0;i<20;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
