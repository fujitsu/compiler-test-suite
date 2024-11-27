#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i,m1=4,m2=1,m3=1;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=m1+((-m2)+(-(++m3)));i<10;i++){
		a[i] = i ;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
