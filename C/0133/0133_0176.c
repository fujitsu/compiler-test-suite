#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub6();
int sub5();
int sub4();
int sub3(double a[4][10],long int n,long int m);
int sub2(double a[4][10],long int n,long int m);
int sub1(double a[4][10],long int n,long int m);
#define N 4
#define M 10

int main()
{
	double a[N][M]={
		0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
			                0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
			                0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
			                0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0	},
	ttt;
	unsigned long int l[N][M],ll=1 ;
	long int i,j ;
	for(j=0;j<M/2;j++)
	{
		for(i=0;i<N;i++)
		{
			l[i][j]     = 1 ;
			l[i][j+M/2] = 0 ;
		}
	}
	if (ll == 1)
	{
		for(i=0;i<3;i++)
		{
			for(j=0;j<M;j++)
			{
				a[i][j] = 10.0 ;
			}
		}
	}
	sub1(a,N,M) ;
	for(i=0;i<3;i++)
	{
		for(j=0;j<M;j++)
		{
			if (l[i][j] == 1)
			{
				a[i][j] = 0.0 ;
			}
			else
			{
				a[i][j] = 9.9 ;
			}
		}
	}
	sub2(a,N,M) ;
	if (a[0][0] <= 0.00001) goto lbl_99 ;
	for(i=0;i<N;i++)
	{
		for(j=0;j<9;j++)
		{
			a[i][j] = 9999.99 ;
		}
	}
lbl_99:
	;
	sub3(a,N,M) ;
	if (a[0][0] <= 0.00001) goto lbl_999 ;
	for(i=0;i<3;i++)
	{
		ttt = 0.01 ;
		for(j=0;j<M;j++)
		{
			a[i][j] = 9999.99 ;
		}
	}
	for(i=0;i<N;i++) for(j=0;j<M;j++)
		printf("a[%ld][%ld] => %8.3f \n",i,j,a[i][j]) ;
lbl_999:
	;
	sub4() ;
	sub5() ;
	sub6() ;
	exit (0);
}
int sub1(double a[4][10],long int n,long int m)
{
	double b[4][10],c[4][10],d[10] ;
	long int j,i,ii,nn ;
	nn = n - 1 ;
	for(i=0;i<nn;i++)
	{
		for(j=0;j<m;j++)
		{
			a[i][j] = 1.0 ;
		}
	}
	for(i=0;i<nn;i++)
	{
		for(j=0;j<m;j++)
		{
			b[i][j] = 9.9 ;
		}
	}
	for(ii=0;ii<10;ii++)
	{
		d[ii] = 100.0 ;
	}
	for(i=0;i<nn;i++)
	{
		for(j=0;j<m;j++)
		{
			c[i][j] = 3.0 ;
		}
	}
	return 0;
}
int sub2(double a[4][10],long int n,long int m)
{
	double b[4][10],c[4][10],d[10] ;
	long int mi[5]={
				3,5,7,8,10		},
	i,j,ii,iii,nn,mm ;
	nn = n - 1;
	for(iii=0;iii<5;iii++)
	{
		mm = mi[iii] ;
		for(i=0;i<nn;i++)
		{
			for(j=0;j<mm;j++)
			{
				a[i][j] = 1.0 ;
			}
		}
		if (mi[0] <= 9) goto lbl_260 ;
		for(i=0;i<nn;i++)
		{
			for(j=0;j<mm;j++)
			{
				b[i][j] = 9.9 ;
			}
		}
		for(ii=0;ii<10;ii++)
		{
			d[ii] = 100.0 ;
		}
lbl_260:
		;
		for(i=0;i<nn;i++)
		{
			for(j=0;j<mm;j++)
			{
				c[i][j] = 3.0 ;
			}
		}
	}
	return 0;
}
int sub3(double a[4][10],long int n,long int m)
{
	double aa[5] ;
	double b[4][10] ;
	long int nn,i,iii,j ;
	nn = n -1 ;
	for(iii=0;iii<5;iii++)
	{
		aa[iii] = 1.0 ;
		for(i=0;i<nn;i++)
		{
			for(j=0;j<m;j++)
			{
				a[i][j] = 1.0 ;
			}
		}
		for(i=0;i<nn;i++)
		{
			for(j=0;j<m;j++)
			{
				b[i][j] = 3.0 ;
			}
		}
	}
	return 0;
}
int sub4()
{
	double a[10],b[10][10] ;
	long int n,m,i,j ;
	n = 9 ;
	m = 10 ;

	for(j=0;j<m;j++)
	{
		a[j] = 0.0 ;

		for(i=0;i<n;i++)
		{
			b[i][j] = 0.0 ;
		}
	}
	return 0;
}
int sub5()
{
	double a[10][10][10],b[10][10][10];
	long int n,m,i,j,l,k ;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				b[i][j][k]=1.0 ;
			}
		}
	}
	n = 9  ;
	m = 9  ;
	l = 10 ;
	for(i=0;i<n;i++)
	{
		for(j=0;j<m;j++)
		{
			for(k=0;k<l;k++)
			{
				a[i][j][k] = b[i][j][k] ;
			}
		}
	}
	return 0;
}
int sub6()
{
	double a[10][10][10],b[10][10][10] ;
	long int i,j,k,l,n,m ;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				b[i][j][k] = 1.0 ;
			}
		}
	}
	n = 9  ;
	m = 9  ;
	l = 10 ;

	for(i=0;i<n;i++)
	{

		for(j=0;j<m;j++)
		{
			for(k=0;k<l;k++)
			{
				a[i][j][k] = b[i][j][k] ;
			}
		}
	}
	return 0;
}
