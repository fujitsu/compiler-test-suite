#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int a[], int b[], int c[]);

int main()
{
	int i,s,a[5],b[5]={
		0,1,2,3,4	},
	c[5]={
		4,3,2,1,0	};
	sub(a,b,c);
	s=0;
	for(i=0;i<5;i++){
		s+=a[i];
	}

	printf(" s = %d ",s) ;
	printf("\n") ;
	exit (0);
}
int sub(a,b,c)
int  a[],b[],c[];
{
	int i;

	for(i=0;i<5;i++)
	{
		a[i] = b[i] + c[i] ;
	}
}
