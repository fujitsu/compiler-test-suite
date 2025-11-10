#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i) a[i-1]
float a[30],b[30],c[30],d[30],e[30],f[30];
int main()
{
	long int i,NN;
	long int N1=1;
	long int L=1;
	long int LL=4;
	long int N,M,I,J,J1,K1,K2,N2,M2,N3,M3,N4,M4,N5,N6,M6;
	for(I=1;I<=30;I++)
	{
		A(I)=1;
	}
	N=1;
	M=-1;
	NN=N+9;
	for(I=1;I<=10;I+=N)
	{
		for(J=1;J>=NN;J-=M)
		{
			for(J1=1;J1<=10;J1+=N1)
			{
				for(K1=1;K1<=10;K1++)
				{
					A(K1)=A(K1+N);
					A(K1)=A(K1-M)+A(K1);
				}
				for(K2 =21;K2 <=30;K2 ++)
				{
					A(K2-N1)=A(K2);
				}
			}
		}
	}
	printf(" ###  ## DOP TEST ###\n");
	printf(" A=  ");
	for(i=1;i<=30;i++){
		printf(" %f \n",A(i));
	}
	exit (0);
}
