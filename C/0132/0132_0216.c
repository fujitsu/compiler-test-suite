#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int a[], int b[], int c[]);

int main()
{
	int i,s,a[5],b[5],c[5];
	for(i=0;i<5;i++){
		a[i]=1;
		b[i]=i;
		c[i]=11-i;
	}
	sub(a,b,c);
	s=0;
	for(i=0;i<5;i++){
		s+=a[i];
	}
	printf(" event2-program \n") ;
	printf(" s = %d \n",s) ;
	exit (0);
}
int sub(a,b,c)
int  a[],b[],c[];
{
	int i;
	for(i=0;i<5;i++)
	{
		a[i] = 1 + i ;
		b[i] = 2 + a[2] ;
		c[i] = 3 ;
	}
}
