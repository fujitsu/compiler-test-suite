#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int      i,icount,j;
	float plus[10],weight;
	float data[]={
		5.5,8.8,4.4,2.3,4.3,0.8,5.2,8.8,9.9,2.8	};
	icount=0 ;
	weight=2.5;
	for   (i=0;i<10;i++) {
		plus[i]=0.0;
		if  (data[i] > 0) {
			plus[i]=data[i]*weight;
			icount=icount+1;
		}
	}
	for(j=0;j<10;j++)
	{
		printf("%6.2f\n",plus[j]);
	}
	exit (0);
}
