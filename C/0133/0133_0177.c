#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub14 (void);
int sub13 (void);
int sub15 (void);
int sub12 (void);
int sub11 (void);
int sub10 (void);
int sub9 (void);
int sub8 (void);
int sub7 (void);
int sub6 (void);
int sub5 (void);
int sub4 (void);
int sub3 (void);
int sub2 (double a[],double b[],long int *n);
int sub1 (double a[],double b[],long int *n);

int main()
{
	double a[30],b[30] ;
	long int n=30 ;
	sub1(a,b,&n) ;
	sub2(a,b,&n) ;
	sub3() ;
	sub4() ;
	sub5() ;
	sub6() ;
	sub7() ;
	sub8() ;
	sub9() ;
	sub10() ;
	sub11() ;
	sub12() ;
	sub15() ;
	exit (0);
}
int sub1(double a[],double b[],long int *n)
{
	long int i,j,k ;
	for(i=0;i<20;i++)
	{
		for(j=0;j<*n;j++)
		{
			a[j] = 1.0 ;
		}
		for(k=0;k<*n;k++)
		{
			b[k] = 2.0 ;
		}
	}
	return 0;
}
int sub2(double a[],double b[],long int *n)
{
	long int i ;
	float rc ;
	rc = 2.0 ;
	for(i=0;i<*n;i++)
	{
		a[i] = (double)i ;
		if (rc <= 2.0)
		{
			b[i] = (double)i + 2.0 ;
		}
	}
	return 0;
}
int 
sub3 (void)
{
	long int i ;
	float s,t,v ;
	for(i=0;i<10;i++)
	{
		s = (float)i + 1.9 ;
		t = s * 2.0 ;
		v = s + t ;
	}
	return 0;
}
int 
sub4 (void)
{
	double c[100],d[60] ;
	long int i,j,k ;
	for(i=0;i<60;i++)
	{
		d[i] = (double)i ;
		c[i] = d[i] ;
	}
	return 0;
}
int 
sub5 (void)
{
	double a[30],b[30] ;
	long int i,j,k ;
	for(i=0;i<20;i++)
	{
		for(j=0;j<30;j++)
		{
			a[j] = 1.0 ;
		}
		for(k=0;k<30;k++)
		{
			b[k] = 2.0 ;
		}
	}
	return 0;
}
int 
sub6 (void)
{
	double a[10],b[10] ;
	long int i ;
	float rc ;
	rc = 2.0 ;
	for(i=0;i<10;i++)
	{
		a[i] = (double)i ;
		if (rc <= 2.0)
		{
			b[i] = (double)i + 2.0 ;
		}
	}
	return 0;
}
int 
sub7 (void)
{
	double x[15] ;
	long int i ;
	float s,t,v ;
	for(i=0;i<9;i++)
	{
		s = (float)i + 1.9 ;
		t = s * 2.0 ;
		v = s + t ;
		x[i] = (double)v ;
	}
	return 0;
}
int 
sub8 (void)
{
	double a[10],b[10] ;
	long int i,n=10 ;
	for(i=0;i<n;i++)
	{
		a[i] = (double)i ;
		b[i] = a[i] ;
	}
	return 0;
}
int 
sub9 (void)
{
	double x[10] ;
	long int i ;
	for(i=0;i<10000;i++)
	{
		if (i+1 < 10)
		{
			x[i] = (double)i ;
		}
	}
	return 0;
}
int 
sub10 (void)
{
	double x[10],y[10] ;
	long int i,ii,j ;
	float rc ;
	rc = 3.0 ;
	for(ii=0;ii<100;ii++)
	{
		for(i=0;i<10;i++)
		{
			x[i] = sqrt((double)(i));
			if (rc <= 5.0)
			{
				x[i] = (double)i ;
			}
		}
		for(j=0;j<9;j++)
		{
			y[j] = x[j] ;
			if (rc >  1.0)
			{
				y[j] = (double)i + 0.4 ;
			}
		}
	}
	return 0;
}

int 
sub11 (void)
{
	double aa[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	double c[10]={
				9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0,9.0		};
	double bb[10]={
				9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4,9.4		};
	double d[10] ;
	long int l[10]={
				6,6,6,6,6,6,6,6,6,6		};
	unsigned long int m[10]={
				0,0,0,0,0,0,0,0,0,0		};
	float rc ;
	long int i,N=10 ;
	rc = 4.6 ;
	for(i=0;i<N;i++)
	{
	
		if (m[i] == 1) bb[i] = c[l[i]] ;
		d[0] = aa[i] ;
		if (rc <= 10.0)
		{
			d[i] = c[i] ;
		}
	}
	for(i=0;i<N;i++) printf("bb[%ld] => %8.3f \n",i,bb[i]) ;
	return 0;
}
double xx[20]={
		1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,
		               1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
double yy[20]={
		3.8,3.8,3.8,3.8,3.8,3.8,3.8,3.8,3.8,3.8,
		               3.8,3.8,3.8,3.8,3.8,3.8,3.8,3.8,3.8,3.8};
double zz[20] ;
long int k=10 ;
int 
sub12 (void)
{
	long int i ;
	for(i=0;i<k;i++)
	{
		zz[i] = xx[i] + yy[i] ;
	}
	sub13() ;
	return 0;
}
int 
sub13 (void)
{
	long int i ;
	for(i=0;i<k;i++)
	{
		xx[i] = xx[i] + 1.5 ;
		yy[i] = yy[i] - 1.0 ;
		zz[i] = xx[i] + yy[i] ;
	}
	sub14() ;
	for(i=0;i<k;i++) printf("zz[%ld] => %8.3f \n",i,zz[i]) ;
	return 0;
}
int 
sub14 (void)
{
	double s[10]={
				9.9,9.9,9.9,9.9,9.9,9.9,9.9,9.9,9.9,9.9		};
	double u[10]={
				-3.1,-3.1,-3.1,-3.1,-3.1,-3.1,-3.1,-3.1,-3.1,-3.1		};
	double t[10] ;
	long int l[10]={
				3,3,3,3,3,3,3,3,3,3		};
	static unsigned long int m[10]={
				0,0,0,0,0,0,0,0,0,0		};
	long int i ;
	for(i=0;i<10;i++)
	{
	
		if (m[i] == 1) t[i] = u[l[i]] ;
		t[0] = s[i] ;
	}
	return 0;
}
int 
sub15 (void)
{
	double a[10],b[10],x[10][10] ;
	long int i,j ;
	for(i=0;i<10;i++)
	{
		a[i] = (double)i + 0.1 ;
		b[i] = a[i] * 2.5 ;
		for(j=0;j<10;j++)
		{
			x[i][j] = 55 - 9.9999 ;
		}
	}
	for(i=0;i<10;i++) for(j=0;j<10;j++)
		printf("x[%ld][%ld] = %8.3f\n",i,j,x[i][j]) ;
	return 0;
}
