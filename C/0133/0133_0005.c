#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1005(double a[], double b[], double *j);

int main(){
	double a[10]={
				2.,2.,2.,2.,2.,2.,2.,2.,2.,2.		};
	double b[10]={
				3.,3.,3.,3.,3.,3.,3.,3.,3.,3.		};
	long int i;
	double j=1.5;
	s1005(a,b,&j);
	for(i=0;i< 10;i++){
		b[i] = b[i] / 1000000.0;
		b[i] = b[i] * 1000000.0;
		printf("a[%ld] => %g  b[%ld] => %g\n",i,a[i],i,b[i]);
	}
	j = j / pow(10.0,30.0) ;
	j = (double)j * pow(10.0,30.0) ;
	printf("j => %g\n",j);
	exit (0);
}
int s1005(a,b,j)
double a[], b[],*j;
{
	long int i,k;
	for(i=0;i<10;i++){
		a[i] = sqrt(a[i]) * a[i];
		for(k=0;k<10;k++){
			*j = *j * a[k];
		}
		b[i] = sqrt(*j) * sqrt(b[i]);
	}
	return 0;
}
