#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[], float b[], int c[], int n);

int main()
{
	int    c[10]= {
		1,2,3,4,5,6,7,8,9,10	},
	i,n=8;
	float  b[10]= {
		0,0,0,0,0,0,0,0,0,0	};
	double a[10]= {
		1,2,3,4,5,6,7,8,9,10	};
	sub(a,b,c,n) ;
	for (i=0;i<10;i++) printf("%f \n",b[i]);
	exit (0);
}
int sub(a,b,c,n)
int c[],n;
double a[];
float b[];
{
	int i;
	for (i=n;i>1;i-=2)
		if (a[c[i]]<8) b[i] = b[i] + i ;
}
