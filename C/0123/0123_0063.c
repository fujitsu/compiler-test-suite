#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define L20(i)     l20[i-1]
#define I20(i)     i20[i-1]
#define I21(i)     i21[i-1]
long int    i20[10],i21[10];
unsigned long int l20[10]={
	1,1,1,1,1,0,0,0,0,0};
int main()
{
	long int N1=1;
	long int N2=2;
	long int N10=10;
	long int   I10S=0,I20S=2,I2,I3,I,I1,I4,J,K,i,j,k;
	for(i=0;i<10;i++){
		i20[i]=1;
		i21[i]=i+1;
	}
	printf(" *****  *****\n");
	printf(" ----- NO.2 -----\n");
	for(i=0;i<10;i++) printf("%ld  ",i20[i]);
	printf("\n");
	for(i=0;i<10;i++) printf("%ld  ",i21[i]);
	printf("\n");
	
	for(I1=2;I1<=N10;I1++)
		I20(I1)=I20(I1-1)+I21(I1)*I20S;
	
	for(i=1;i<=10;i++) printf(" %ld ",I20(i));
	printf("\n");
	exit (0);
}
