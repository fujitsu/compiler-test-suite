#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[], double b[]);

int main()
{
	int i,n=0,imx,imn;
	double a[10],b[10],max,min;
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=(double)i;
	}
	sub(a,b);
	exit (0);
}
int sub(a,b)
double a[],b[];
{
	int i,imx,imn;
	double max,min;
	max=0.;
	imx=-1;

	for(i=0;i<10;i++){
		a[i]=a[i]+b[i];
		max = (a[i]>max)?  a[i]:max;
	}

	printf(" max = %g \n",max) ;
	b[7]= -max;
	min=0.;
	imn=-1;

	for(i=0;i<10;i++){
		a[i]=a[i]+b[i];
		min = (a[i] < min)? a[i]:min;
	}
	printf(" min = %g \n",min) ;
	imx=0;
	for(i=0;i<10;i++){
		if (a[i] > a[imx]){
			imx=i;
		}
	}
	printf(" imx = %d \n",imx) ;
	imn=0;
	for(i=0;i<10;i++){
		if (a[i] < a[imn]){
			imn=i;
		}
	}
	printf(" imn = %d \n",imn) ;
	b[5] *= 5.;

	for(i=0;i<10;i++){
		if (b[i] > a[5]){
			a[5]=b[i];
			imx=i;
		}
	}
	printf(" a[5]= %g  imx= %d \n",a[5],imx) ;
	for(i=0;i<10;i++){
		printf(" a= %g  b= %g \n",a[i],b[i]) ;
	}
}
