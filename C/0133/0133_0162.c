#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define N 10

int sub(float a[],float b[],float x1[],float x2[],float x3[],float x4[],float x5[],long int n,float *s);
int main()
{
	float a[N],b[N],x1[N],x2[N],x3[N],x4[N],x5[N] ;
	float s=10.9 ;
	long int i ;
	for(i=0;i<N;i++)
	{
		a[i] = 9.9 ;
		b[i] = 1.0 ;
	}
	sub(a,b,x1,x2,x3,x4,x5,N,&s) ;
	exit (0);
}
int sub(float a[],float b[],float x1[],float x2[],float x3[],
float x4[],float x5[],long int n,float *s)
{
	long int i ;

	for(i=0;i<n;i++)
	{
		*s    = a[i] ;
		x1[i] = i ;
		x2[i] = sqrt((double)i) ;
		x3[i] = x2[i] - 0.001 ;
		x4[i] = x1[i] + b[i] ;
		x5[i] = *s - x4[i] ;
		b[i]  = x5[i] ;
	}
	printf("s => %8.3f \n",*s) ;
	for(i=0;i<n;i++)
	{
		printf("a[%ld] => %8.3f  b[%ld] => %8.3f  x1[%ld] => %8.3f \n",
		    i,a[i],i,b[i],i,x1[i]) ;
		printf("x2[%ld]=%8.3f x3[%ld]=%8.3f x4[%ld]=%8.3f x5[%ld]=%8.3f \n",
		    i,x2[i],i,x3[i],i,x4[i],i,x5[i]) ;
	}
	return 0;
}
