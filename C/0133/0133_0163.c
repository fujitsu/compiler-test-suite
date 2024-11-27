#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#define L1 5
#define L2 5
#define L3 5
#define L4 5

int main()
{
	float x[L1][L2]        ,x2[L1][L2]        ,x3[L1][L2],
	a[L1][L2][L3]    ,a2[L1][L2][L3]    ,a3[L1][L2][L3],
	b[L1][L2][L3][L4],b2[L1][L2][L3][L4],b3[L1][L2][L3][L4],
	c[L1][L2][L3][L4],c2[L1][L2][L3][L4],c3[L1][L2][L3][L4],
	d[L1][L2][L3]    ,d2[L1][L2][L3]    ,d3[L1][L2][L3],
	z[L1],z2[L1],z3[L1];
	long int i,j,k,l ;
	for(i=0;i<L1;i++)
	{
		z2[i] = i + i ;
		z3[i] = i + 3 ;
		for(j=0;j<L2;j++)
		{
			x2[i][j] = (i + j) * 4 ;
			x3[i][j] = (i + j) * (i + j) ;
			for(k=0;k<L3;k++)
			{
				a2[i][j][k] = i + j + k ;
				a3[i][j][k] = i + k * k ;
				d2[i][j][k] = i * j - k ;
				d3[i][j][k] = i * k - j ;
				for(l=0;l<L4;l++)
				{
					b2[i][j][k][l] = i + j + k + l ;
					b3[i][j][k][l] = i * j - k * l ;
					c2[i][j][k][l] = i - j + k - l ;
					c3[i][j][k][l] = i - j - k * l ;
				}
			}
		}
	}
	for(i=0;i<L1;i++)
	{
		printf("z2[%ld] => %8.3f  z3[%ld] => %8.3f \n",i,z2[i],i,z3[i]) ;
		for(j=0;j<L2;j++)
		{
			printf("x2[%ld][%ld] => %8.3f  x3[%ld][%ld] => %8.3f \n",
			    i,j,x2[i][j],i,j,x3[i][j]) ;
			for(k=0;k<L3;k++)
			{
				printf("a2[%ld][%ld][%ld] => %8.3f  a3[%ld][%ld][%ld] => %8.3f \n",
				    i,j,k,a2[i][j][k],i,j,k,a3[i][j][k]) ;
				printf("d2[%ld][%ld][%ld] => %8.3f  d3[%ld][%ld][%ld] => %8.3f \n",
				    i,j,k,d2[i][j][k],i,j,k,d3[i][j][k]) ;
				for(l=0;l<L4;l++)
				{
					printf("b2[%ld][%ld][%ld][%ld] => %8.3f \n",
					    i,j,k,l,b2[i][j][k][l]) ;
					printf("b3[%ld][%ld][%ld][%ld] => %8.3f \n",
					    i,j,k,l,b3[i][j][k][l]) ;
					printf("c2[%ld][%ld][%ld][%ld] => %8.3f \n",
					    i,j,k,l,c2[i][j][k][l]) ;
					printf("c3[%ld][%ld][%ld][%ld] => %8.3f \n",
					    i,j,k,l,c3[i][j][k][l]) ;
				}
			}
		}
	}
	exit (0);
}
