#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[]);

int main()
{
	int i;
	double a[10];
	for(i=0;i<10;i++){
		a[i]=2.0;
	}
	sub(a);
	exit (0);
}
int sub(a)
double a[];
{
	int i,imx,imn;
	double b[10],max,min;
	for(i=0;i<10;i++){
		b[i]=(double)i;
	}
	max=0.;
	imx=-1;
	for(i=0;i<10;i++){
		a[i]=a[i]+b[i];
		if (a[i] > max){
			max=a[i];
			imx=i;
		}
	}

	printf(" max = %g  imx = %d ",max,imx) ;
	b[7]= -max;
	min=0.;
	imn=-1;
	for(i=0;i<10;i++){
		a[i]=a[i]+b[i];
		if (a[i] < min){
			min=a[i];
			imn=i;
		}
	}
	printf(" min = %g  imn = %d ",min,imn) ;
	printf("\n") ;
}
