#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double a[]);

int main()
{
	int i;
	double a[10],b[10],s;
	for(i=0;i<10;i++){
		a[i]=2.0;
		b[i]=(double)i;
	}
	sub(a);
	exit (0);
}
int sub(a)
double a[];
{
	int i;
	double b[10],s=1.0;
	for(i=0;i<10;i++){
		b[i]=(double)i;
	}
	for(i=1;i<10;i++){
		b[i]+=1.;
		a[i]=a[i-1]+b[i]*1.5;
	}

	for(i=0;i<10;i++){
		printf(" a= %g \n",a[i]) ;
	}
	for(i=1;i<10;i++){
		s=s+a[i]*2.;
		b[i]=s;
	}
	printf(" s= %g  \n",s);
}
