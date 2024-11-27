#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
int sub(int a[], int b[], int c[]);

int main()
{
	int i,a[5],b[5],c[5];
	for(i=0;i<5;i++)
	{
		a[i] = 1 ;
		b[i] = 2 + i ;
		c[i] = 3 ;
	}
	sub(a,b,c) ;
	for(i=0;i<5;i++)
	{
		printf(" a =  %d \n",a[i]) ;
		printf(" b =  %d \n",b[i]) ;
		printf(" c =  %d \n",c[i]) ;
	}
	exit (0);
}
int sub(a,b,c)
int a[],b[],c[];
{
	int i;
	for(i=0;i<5;i++)
		a[i] = b[i] + c[i] ;
}
