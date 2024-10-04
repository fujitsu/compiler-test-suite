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
	double s,a[10]={
		1.,1.,2.,2.,3.,3.,4.,4.,5.,5.	};
	sub(a);
	s=0;
	for(i=0;i<10;i++){
		s+=a[i];
	}

	printf(" s = %g \n",s) ;
	exit (0);
}
int sub(a)
double a[];
{
	int i;
	for(i=0;i<10;i++)
	{
		a[i]= sin(b[i]) + cos(c[i]);
	}
}
