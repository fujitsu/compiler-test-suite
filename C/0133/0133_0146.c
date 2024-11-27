#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub(float a[20][20],float b[20][20],float c[20][20],long int *n,long int *m);

int main()
{
	float a[20][20],b[20][20],c[20][20];
	long int m=20,n=20,j=1,k,i ;
	for(k=0;k<20;k++){
		for(i=0;i<20;i++){
			a[i][k]=0;
			b[i][k]=1;
			c[i][k]=2;
		}
	}
	if (j > m)
	{
		a[0][j] = 9.8 ;
	}
	for(j=0;j<n;j++)
	{
		if (j > m-11) a[1][j] = 9.9 ;
	}
	for(j=0;j<n;j++)
	{
		if (j > n-11) goto lbl_12 ;
		a[2][j] = 10.0 ;
lbl_12:
		;
	}
	j=1;
	if (j > n-6)
	{
		a[0][j] = 8.8 ;
	}
	for(i=0;i<n/2;i++)
	{
		a[i][j] = 8.0 ;
	}
	j=1 ;
	if (j > m-2) goto lbl_31 ;
	b[1][j] = 8.7 ;
	for(i=0;i<n;i+=2)
	{
		a[i][j] = 8.1 ;
	}
lbl_31:
	;
	for(j=0;j<20;j++)
	{
		for(i=0;i<20;i++)
		{
			c[i][j] = a[i][j] ;
		}
	}
	sub(a,b,c,&n,&m) ;
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%2ld][%2ld]=%8.3f b[%2ld][%2ld]=%8.3f c[%2ld][%2ld]=%8.3f\n",
			    i,j,a[i][j],i,j,b[i][j],i,j,c[i][j]) ;
		}
	}
	exit (0);
}
int sub(float a[20][20],float b[20][20],float c[20][20],long int *n,long int *m)
{
	long int i,j=1 ;
	if (j > *m-1)
	{
		a[0][j] = 9.8 ;
	}
	for(j=0;j<*n;j++)
	{
		if (j > *m-11) a[1][j] = 9.9 ;
	}
	for(j=0;j<*n;j++)
	{
		if (j > *n-11) goto lbl_12 ;
		a[2][j] = 10.0 ;
lbl_12:
		;
	}
	j = 1 ;
	if (j > *n-6)  a[0][j] = 8.8 ;
	for(i=0;i<*n/2;i++)
	{
		a[i][j] = 8.0 ;
	}
	j=1 ;
	if (j > *m-2) goto lbl_31 ;
	b[1][j] = 8.7 ;
	for(i=0;i<*n;i+=2)   a[i][j] = 8.1 ;
lbl_31:
	;
	for(j=0;j<20;j++)
	{
		for(i=0;i<20;i++)
		{
			c[i][j] = a[i][j] ;
		}
	}
	for(j=0;j<20;j++){
		for(i=0;i<20;i++){
			printf("a[%2ld][%2ld]=%8.3f b[%2ld][%2ld]=%8.3f c[%2ld][%2ld]=%8.3f\n",
			    i,j,a[i][j],i,j,b[i][j],i,j,c[i][j]) ;
		}
	}
}
