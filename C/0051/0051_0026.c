#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[]);

double b[10]={
	1.,2.,3.,4.,5.,6.,7.,8.,9.,10.};
double c[10]={
	10.,12.,13.,14.,15.,16.,17.,18.,19.,11.};
int main()
{
	int i;
	double a[10]={
		1.,1.,2.,2.,3.,3.,4.,4.,5.,5.	};
	sub(a);

	for(i=0;i<10;i+=2){
		printf(" a[%d] = %g ",i,a[i]) ;
		printf(" a[%d] = %g \n",i+1,a[i+1]) ;
	}
	exit (0);
}
int sub(a)
double a[];
{
	int i;
	for(i=0;i<9;i++)
	{
		a[i]=a[i+1]+b[i]*c[i] ;
	}
}
