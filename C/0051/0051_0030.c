#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef struct stary{
	double x;
	double y;
	double z;
}s[20];
typedef struct st{
	double a[20];
	double b[20];
	double c[20];
}t;
int main()
{
	long int i;
	double sum1,sum2;
	struct stary o[20];
	struct st    p;
	for(i=0;i<20;i++){
		o[i].x=1.01;
		o[i].y=2.;
		o[i].z=(double)(i);
		p.a[i]=3.02;
		p.b[i]=4.;
		p.c[i]=(double)(21-i);
	}
	sum1=0.;
	sum2=0.;
	for(i=0;i<20;i++){
		sum1+=(o[i].x+o[i].y+o[i].z);
		sum2+=(p.a[i]+p.b[i]+p.c[i]);
	}

	printf(" sum1 = %g ",sum1) ;
	printf(" sum2 = %g \n",sum2) ;
	exit (0);
}
