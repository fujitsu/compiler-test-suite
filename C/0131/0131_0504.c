#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i) a[i-1]
int main()
{
	int  i,m1=1,m2=2,m3=2,m4=2;
	long int a[50];
	for(i=0;i<50;i++){
		a[i] = 0;
	}
	for(i=2;i<20;i++){
		a[i * 2 + (m1 + (m2 - (-m3++)))-m4++] = i ;
	}
	for(i=0;i<50;i++){
		printf(" a[%d] = %ld \n",i,a[i]);
	}
	exit (0);
}
