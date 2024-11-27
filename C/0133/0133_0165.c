#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

struct tag {
	double dreal,dimag ;
};
int sub1(double a[],double b[],struct tag c[],double x[],double y[],struct tag z[],long int n);
int main()
{
	double a[N]={
				0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1		};
	double b[N]={
				7.3,7.3,7.3,7.3,7.3,7.3,7.3,7.3,7.3,7.3		};
	double y[N]={
				5.5,5.5,5.5,5.5,5.5,5.5,5.5,5.5,5.5,5.5		};
	double x[N] ;
	static struct tag c[N] ;
	static struct tag z[N] ;
	long int i ;
	for(i=0;i<N;i++)
	{
		c[i].dreal = 5.7 ;
		c[i].dimag = -4.2 ;
	}
	sub1(a,b,c,x,y,z,N) ;
	exit (0);
}
int sub1(double a[],double b[],struct tag c[],double x[],double y[],
struct tag z[],long int n)
{
	double xx[10],yy[10] ;
	long int i ;
	for(i=0;i<n;i++)
	{
		x[i] = b[i] + a[i] ;
		z[i].dreal = sqrt(c[i].dreal) - x[i] ;
		z[i].dimag = sqrt(c[i].dimag) - x[i] ;
		yy[i] = a[i] * x[i] + z[i].dreal ;
		xx[i] = b[i] / y[i] - z[i].dreal ;
	}
	for(i=0;i<n;i++)
		printf("xx[%ld] => %8.3f  yy[%ld] => %8.3f \n",i,xx[i],i,yy[i]) ;
	return 0;
}
