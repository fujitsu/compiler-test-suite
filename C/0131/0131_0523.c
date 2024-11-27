#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i,m1=6,n=1,m=2;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=m1-(-n++)-2*m-3;i<10;i++){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
