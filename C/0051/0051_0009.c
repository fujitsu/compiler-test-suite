#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=0,imx,imn;
	double a[10],b[10],max,min;
	for(i=0;i<10;i++){
		a[i]=2.0;
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
	exit (0);
}
