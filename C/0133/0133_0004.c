#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1004(double a[],long int *n);

int main()
{
	long int n,i ;
	double a[10]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		};
	n = 10 ;
	s1004(a,&n) ;
	for(i=0;i<10;i++) printf("a[%ld] => %10.3f\n",i,a[i]) ;
	exit (0);
}
int s1004(double a[],long int *n)
{
	long int i;
	if (*n > 10) goto lbl_20 ;
	for(i=0;i<*n;i++)
	{
		a[i] = i+1 ;
	}
	*n = 30 ;
lbl_20:
	;
	for(i=0;i<10;i++) printf("a[%ld] => %10.3f \n",i,a[i]) ;
	printf("n => %ld \n",*n) ;
	return 0;
}
