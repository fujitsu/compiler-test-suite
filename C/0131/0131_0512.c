#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	long int b[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=0;i<10;i++){
		a[i!=9] = i ;
	}
	for(i=0;i<10;i++){
		b[i==1] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld , b[%d] = %ld \n",i,a[i],i,b[i]);
	}
	exit (0);
}
