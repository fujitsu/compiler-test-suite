#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
#define B(i) b[i-1]
#define C(i) c[i-1]
#define D(i) d[i-1]
#define E(i) e[i-1]
#define F(i) f[i-1]
#define M(i) m[i-1]

float a[10],b[10],c[10],d[10],e[10],f[10];
unsigned long int m[10];
int main()
{

	long int i,j,k,n;
	float S=0.0;

	for(i=0;i< 10;i++){
		a[i]=b[i]=e[i]=(float)(i+1.0);
		c[i]=0.0;
		d[i]=2.5;
		f[i]=(float)(i+1.0)*2.0;
	}

	for(i=0;i< 5;i++){
		m[i]=0;
		m[i+5]=1;
	}


	k=0;
	for(i=2;i<=10;i++)
	{
		S=A(i);
		B(i)=B(i-1)+i;
		if (M(i)==1)
		{
			k=k+1;
			C(k)=S+D(i);
		}
	}
	for(i=1,n=0;i<=10;i++){
		printf(" S= %g   C(%ld)= %g ,",S,i,C(i));
		n=i%2;
		if(n == 0)  printf("\n");
	}
	printf("\n");

	k=0;
	for(i=2;i<=10;i++)
	{
		S=A(i);
		B(i)=B(i-1)+i;
		if (M(i)==1)
		{
			k=k+1;
			C(i)=S+D(k);
		}
	}
	for(i=1;i<=10;i++){
		printf(" S= %g   C(%ld)= %g ,",S,i,C(i));
		n=i%2;
		if(n == 0)  printf("\n");
	}
	printf("\n");

	k=0;
	j=0;
	for(i=2;i<=10;i++)
	{
		S=A(i);
		B(i)=B(i-1)+i;
		if (M(i)==1)
		{
			k=k+1;
			C(i)=S+D(k);
		}
		else
		{
			j=j+1;
			E(j)=S+F(i);
		}
	}
	for(i=1;i<=10;i++){
		printf(" S= %g  C(%ld)= %g  E(%ld)= %g  \n",S,i,C(i),i,E(i));
	}
	exit (0);
}
