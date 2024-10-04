#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[]);

int main()
{
	int i;
	double a[10];
	for(i=0;i<10;i++){
		a[i]=(double)i;
	}
	sub(a);
	exit (0);
}
int sub(a)
double a[];
{
	int i;
	double s;
	s=0.;
	for(i=0;i<10;i++){
		s+=a[i];
	}
	printf(" s = %g \n",s) ;
}
