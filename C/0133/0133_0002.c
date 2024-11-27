#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1002(double a[],long int n,long int l,long int *k);

int main()
{
	double a[100] ;
	long int i,k ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
	}
	s1002(a,10,1,&k) ;
	for(i=0;i<10;i++) printf("a[%ld] => %10.3f \n",i,a[i]) ;
	exit (0);
}

int s1002(double a[],long int n,long int l,long int *k)
{
	long int i ;
	*k = 10 ;
	if (l < 0) goto lbl_100 ;
	goto lbl_200 ;
lbl_300:
	;
	l = 10 ;
	return 0;
lbl_100:
	;
	for(i=0;i<n;i++)
	{
		a[i] = a[i] * 2 ;
	}
	goto lbl_300 ;
lbl_200:
	;
	for(i=0;i<n;i++)
	{
		a[i] = 0.0 ;
	}
	goto lbl_300 ;
}
