#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i=0;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(++i+2;i<10;i++){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
