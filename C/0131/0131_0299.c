#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct st1{
	long int a1 :1;
	long int a2 :2;
	long int a3 :1;
	long int a4 :2;
	long int a5 :3;
	long int a6 :1;
	long int a7 :2;
	long int a8 :3;
	long int a9 :4;
	long int a10:1;
	long int a11:2;
	long int a12:1;
	long int a13:2;
	long int a14:3;
	long int a15:4;
} x[20];
struct st2{
	unsigned long int b1 :1;
	unsigned long int b2 :2;
	unsigned long int b3 :1;
	unsigned long int b4 :2;
	unsigned long int b5 :3;
	unsigned long int b6 :1;
	unsigned long int b7 :2;
	unsigned long int b8 :3;
	unsigned long int b9 :4;
	unsigned long int b10:1;
	unsigned long int b11:2;
	unsigned long int b12:1;
	unsigned long int b13:2;
	unsigned long int b14:3;
	unsigned long int b15:4;
} y[20];
int main()
{
	double a[20],b[20],c[20];
	double sum;
	long int i,isum1,isum2;
	printf("<<<<<<  >>>>>> \n");
	for(i=0;i<20;i++)
	{
		a[i]=(double)(21-i);
		b[i]=(double)(i);
		c[i]=3.;
		x[i].a1=1;
		x[i].a2=3;
		x[i].a3=1;
		x[i].a4=2;
		x[i].a5=5;
		x[i].a6=2;
		x[i].a7=1;
		x[i].a8=0;
		x[i].a9=1;
		x[i].a10=0;
		x[i].a11=1;
		x[i].a12=0;
		x[i].a13=1;
		x[i].a14=2;
		x[i].a15=3;
	}
	for(i=0;i<20;i++){
		y[i].b1=x[i].a1;
		y[i].b2=x[i].a6;
		y[i].b3=x[i].a10;
		y[i].b4=x[i].a7;
		y[i].b5=x[i].a14;
		y[i].b15=x[i].a12+x[i].a13;
	}
	sum=0.;
	isum1=0;
	isum2=0;
	for(i=0;i<20;i++){
		sum+=(a[i]+b[i]+c[i]);
		if (y[i].b1 == 1 | y[i].b2 == 0){
			isum1+=1;
		}
		if (y[i].b3 & y[i].b4 == 0  |
		    x[i].a2 != 0 ){
			isum2+=y[i].b15+x[i].a9;
		}
	}
	printf(" sum= %g \n",sum);
	printf(" isum1= %ld \n",isum1);
	printf(" isum2= %ld \n",isum2);
	exit (0);
}
