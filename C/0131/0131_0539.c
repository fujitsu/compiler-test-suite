#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int  i,m1=1,m2=1,n=1;
	long int a[10]={
		0,0,0,0,0,0,0,0,0,0	};
	for(i=3;i<10;i++){
		a[i+((-m1)+(-(m2--)))-n] = i ;
		n++;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
