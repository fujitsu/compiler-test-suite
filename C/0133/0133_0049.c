#include <stdlib.h>
#include <math.h>
#include <stdio.h>

typedef struct {
	float real;
	float imag;
}complex8;
typedef struct {
	double dreal;
	double dimag;
}complex16;
int main()
{
	long int ia[10][10],ib[10][10];
	static unsigned long int la[10][10],lb[10][10],lc[10][10];
	float ra[10][10],rb[10][10];
	double da[10][10],db[10][10],dc[10][10];
	complex8 ca[10][10],cb[10][10],cc[10][10];
	complex16 cda[10][10],cdb[10][10];
	long int i,j,k,l,is1=201;
	float rs1=201.0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			ia[j][i] = ib[j][i] = 0;
			ra[j][i] = rb[j][i] = 0.0;
			da[j][i] = db[j][i] = 0.0;
			cb[j][i].real = cb[j][i].imag = 0.0;
			cc[j][i].real = cc[j][i].imag = 0.0;
			dc[j][i]        = 0.0;
			cdb[j][i].dreal = 0.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(k=0;k<10;k++)
		{
			if (ia[k][j] > ib[k][j])
			{
				if (ra[k][j] < rb[k][j])
				{
					if (da[k][j] != db[k][j])
					{
						ca[k][j].real = cb[k][j].real + cc[k][j].real ;
					}
					else
					{
						la[k][j] = lb[k][j] && lc[k][j] ;
					}
				}
				else
				{
					if (cda[k][j].dreal == cdb[k][j].dreal)
					{
						ca[k][j].real = cb[k][j].real - cc[k][j].real ;
					}
				}
			}
			else
			{
				if(la[k][j] == 1) la[k][j] = lc[k][j] || lb[k][j];
			}
		}
	}
	for(k=0;k<10;k++)
	{
		for(j=0;j<3;j++)
		{
			is1 = is1 + ia[j][k] ;
			rs1 = (rs1>ra[j][k]) ? rs1:ra[j][k];
			da[j][k] = db[j][k] * dc[j][k];
		}
	}
	for(j=0;j<10;j++)
	{
		for(k=0;k<10;k++)
		{
			da[j][k] = db[j][k] + dc[j][k] ;
			goto lbl_31;
lbl_32:
			ca[j][k].real = cb[j][k].real * cc[j][k].real;
		}
	}
	goto lbl_33 ;
lbl_31:
	la[j][k] = lb[j][k] || lc[j][k];
	goto lbl_32;
lbl_33:
	for(j=0;j<10;j++)
	{
		for(k=0;k<10;k++)
		{
			printf("la[%ld][%ld]=%lu , ca[%ld][%ld]=%g\n",j,k,la[j][k],
			    j,k,ca[j][k].real);
		}
	}
	exit (0);
}
