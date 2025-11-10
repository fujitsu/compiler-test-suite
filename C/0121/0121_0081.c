#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB1 (float xx, float zz);
int SUB (float xx);
#define A1(i,j) a1[i-1][j-1]
#define B1(i,j) b1[i-1][j-1]
#define C1(i,j) c1[i-1][j-1]
#define L1(i) l1[i-1]
#define L2(i,j) l2[i-1][j-1]
#define A(i,j) a[i-1][j-1]
#define B(i,j) b[i-1][j-1]
#define C(i) c[i-1]
#define D(i,j) d[i-1][j-1]
#define IL(i) il[i-1]
float a1[20][20],b1[20][20],c1[20][20];
unsigned long int l1[20],l2[20][20];
float a[20][20],b[20][20],c[20],d[20][20];
long int il[20];
float xx,zz;
union{
	float a[1][1];
	float d[1][1];
}udata;
union{
	float a[20][20];
	float c[20];
}udata1;
int main (void)
{
	long int nn=10;
	long int n=15;
	long int i,k,j,i1,i2;
	int s=0;
	float x;
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			A1(i,j)=1.0;
			B1(i,j)=2.0;
			C1(i,j)=3.0;
		}
	}
	for(i=1;i<=20;i++){
		L1(i)=0;
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=10;i++){
			L2(i,j)=0;
		}
	}
	for(j=1;j<=20;j++){
		for(i=11;i<=15;i++){
			L2(i,j)=1;
		}
	}
	for(j=1;j<=20;j++){
		for(i=16;i<=20;i++){
			L2(i,j)=0;
		}
	}
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			A(i,j)=1.0;
			B(i,j)=2.0;
		}
	}
	for(i=1;i<=20;i++){
		C(i)=3.0;
	}
	for(i=1;i<=n;i++)
	{
		L1(i)=!L2(i,1);
		for(j=2;j<=n;j++)
		{
			for(k=2;k<=n;k++)
			{
				A1(k,j)=A1(k,j)+C1(k-1,j)*2.;
				B1(k,j)=C1(k+1,j)*A1(k+1,j);
				if ( L2(k,j) ==1)
				{
					C1(k,j)=A1(k,j+1)+1.0;
				}
			}
		}
	}
	for(i=1;i<=10;i++)
	{
		L1(i)=!L2(i,1);
		for(j=2;j<=n;j++)
		{
			for(k=2;k<=n;k++)
			{
				C1(k,j)=A1(k,j)+B1(k-1,j)/(float)(i);
				B1(k,j)=C1(k+1,j)-A1(k+1,j);
				if ( L2(k,j) || L1(k) ==1)
				{
					L2(k,j)=1;
				}
				else
				{
					L1(k)=1;
				}
			}
		}
	}
	for(i=1;i<=20;i++)
	{
		IL(i)=i;
	}
	for(i=1;i<=nn;i++){
		for(j=1;j<=10;j++){
			A(i,j)=B(i,j)+C(j);
			SUB(C(IL(j)));
			C(IL(j))=B(i,j)*2.;
		}
	}
	for(i1=1;i1<=nn;i1++){
		for(i2=1;i2<=nn;i2++){
			A(i1,i2)=B(i1,i2)*A(i1,i2+1);
			xx=A(i1,IL(i2))/B(i1,IL(i2));
			SUB1(xx,A(i1,i2));
			B(i1,i2)=C(i2)+xx;
		}
	}
	printf("  ***  *** \n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf("(A1(%ld,%ld)) %g ",i,j,A1(i,j));
			s=s+1;
			x=s%5;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf("(B1(%ld,%ld)) %g ",i,j,B(i,j));
			s=s+1;
			x=s%5;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf("(C1(%ld,%ld)) %g ",i,j,C1(i,j));
			s=s+1;
			x=s%5;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf("(A(%ld,%ld)) %g ",i,j,A(i,j));
			s=s+1;
			x=s%5;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf("(B(%ld,%ld)) %g ",i,j,B(i,j));
			s=s+1;
			x=s%5;
			if( x==0 ) printf(" \n");
		}
	}
	printf(" \n");
	for(i=1;i<=20;i++){
		printf("C(%ld)) %g ",i,C(i));
		s=s+1;
		x=s%5;
		if( x==0 ) printf(" \n");
	}
	exit (0);
}
int SUB (float xx)
{
	xx=xx+1.0;
	return 0;
}
int SUB1 (float xx, float zz)
{
	xx=xx+1.0;
	zz=zz+1.0;
	return 0;
}
