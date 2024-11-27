#include <stdlib.h>
#include <math.h>


#include<stdio.h>

#define  EPS   1.0e-20
int main()
{
	double a,b;
	extern double darctan();

	a = darctan(16,5);
	b = darctan(4,239);
	printf("%f\n",a-b);
	exit (0);
}
double darctan(n,d)
int n,d;
{    
	double r,e,f,dsqr;
	int i;
	dsqr = (double)d*(double)d;
	e    = (double)n/(double)d;
	r=e;
	i=3;
	while (e>EPS){
		e= e/dsqr;
		f= e/i;
		if(i%4==1)
			r = r+f;
			else
			r = r-f;
		i+=2;
	}
	return(r);
}
