#include <stdlib.h>
#include <stdio.h>
#include <math.h>



typedef struct stary{
	double x;
	double y;
	long int n;
} s[20];
int sub (double a[], double b[], double c[], struct stary *p);
int main (void)
{
	double a[20],b[20],c[20];
	double sum1,sum2;
	struct stary o[20];
	long int i,isum;
	for(i=0;i<20;i++)
	{
		a[i]=(double)(21-i);
		b[i]=(double)(i);
		c[i]=3.;
		o[i].x=1.0;
		o[i].y=2.0;
		o[i].n=i;
	}
	sub(a,b,c,&o[0].x);
	sum1=0.;
	sum2=0.;
	isum=0;
	for(i=0;i<20;i++){
		sum1+=(a[i]+b[i]+c[i]);
		sum2+=(o[i].x+o[i].y);
		isum+=(o[i].n);
	}
	printf(" sum1= %g \n",sum1);
	printf(" sum2= %g \n",sum2);
	printf(" isum= %ld \n",isum);
	exit (0);
}
int sub (double a[], double b[], double c[], struct stary *p)
{
	long int i;
	for(i=0;i<20;i++) {
		a[i]=b[i]+c[i];
		p->x = p->x + p->y;
		p->n +=1 ;
		p++;
	}
}
