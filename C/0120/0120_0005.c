#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int   i;
	double x[]={
		1.01,2.6,6.4,9.2,5.06,2.22,6.98,5.55,9.91,6.57	};
	double y[]={
		4.56,3.9,4.6,2.9,5.55,2.89,6.98,5.56,9.43,5.01	};
	double sumx,sumy,ipd;
	sumx=0.0;
	sumy=0.0;
	ipd=0.0;
	for(i=0 ; i <10;  i++)
	{
		sumx=sumx+x[i];
		sumy=sumy+y[i];
		ipd=ipd+x[i]*y[i];
	}
	{
		printf("%6.2f\n",ipd);
	}
	exit (0);
}
