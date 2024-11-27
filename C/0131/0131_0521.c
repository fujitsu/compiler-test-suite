#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i,m1=4,n=1;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=0;i<10;m1-(-++i)-(n++)){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
