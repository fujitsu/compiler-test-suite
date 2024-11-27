#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define  imax       1000

int main() {
	int i,j;
	double B=0.0,t,s;
	for(i=0;i<10;i++) {
		double  x=(double)i/10.0*M_PI;
		double  y=sin(x);
		B+=x;
	}
	printf("case-1 ---> %lg\n",B);
	B=0.0;
	for(j=0;j<200;j++)
		for(i=0;i<imax;i++) {
			double  x=((double)(i+j)/(double)imax)*M_PI;
			double  y=sin(x);
			B+=x;
		}
	printf("case-2 ---> %lg\n",B);
	B=0.0;
	for(j=0;j<200;j++)
		for(i=0;i<imax;i++) {
			double  x,y;
			x=((double)(i+j)/(double)imax)*M_PI;
			y=sin(x);
			B+=x;
		}
	printf("case-3 ---> %lg\n",B);
	B=0.0;
	for(j=0;j<200;j++)
		for(i=0;i<imax;i++) {
			t=((double)(i+j)/(double)imax)*M_PI;
			s=sin(t);
			B+=t;
		}
	printf("case-4 ---> %lg\n",B);
	exit (0);
}
