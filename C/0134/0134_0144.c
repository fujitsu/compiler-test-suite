#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main(){
	int a,b,c,d,e,f,g,h,i,j;
	int x[100],y[100];
	a=10,b=9,c=8,d=7,e=6,f=5,g=4,h=3;
	for(i=0;i<100;i++) {
		x[i]=100;
		y[i]=99;
	}
	for(i=0;i<100;i++) y[i]=x[(a-b)*(c+d*(e+f*(g/h)))];
	for(i=0;i<100;i++) printf("y[%d]=%d \n",i,y[i]);
	exit (0);
}
