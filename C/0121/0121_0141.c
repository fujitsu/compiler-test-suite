#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA(i) ra[i-1]
#define RB(i,j) rb[i-1][j-1]
#define RC(i,j,k) rc[i-1][j-1][k-1]
#define RD(i,j,k,l) rd[i-1][j-1][k-1][l-1]
#define DA(i) da[i-1]
#define DB(i,j) db[i-1][j-1]
#define DD(i,j,k,l) dd[i-1][j-1][k-1][l-1]
#define QA(i) qa[i-1]
#define QB(i,j) qb[i-1][j-1]
#define CEA(i) cea[i-1]
#define CEB(i,j) ceb[i-1][j-1]
#define CEC(i,j,k) cec[i-1][j-1][k-1]
#define CED(i,j,k,l) ced[i-1][j-1][k-1][l-1]
#define CDA(i) cda[i-1]
#define CDB(i,j) cdb[i-1][j-1]
#define CDC(i,j,k) cdc[i-1][j-1][k-1]
#define CDD(i,j,k,l) cdd[i-1][j-1][k-1][l-1]
#define L4A(i) l4a[i-1]
#define ID(i,j,k,l) id[i-1][j-1][k-1][l-1]
float ra[10],rb[10][10],rc[10][10][10],rd[10][10][10][10];
double da[10],db[10][10],dd[10][10][10][10];
long double qa[10],qb[10][10];
COMPLEX8 cea[10],ceb[10][10],cec[10][10][10],ced[10][10][10][10];
COMPLEX16 cda[10],cdb[10][10],cdc[10][10][10],cdd[10][10][10][10];
unsigned long int l4a[10];
long int id[10][10][10][10];
int main()
{
	long int II=5;
	long int I4,I3,I2,I1,i,j,k,l;
	short int m;

	for(i=0; i<10; i++)
	{
		ra[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			rb[i][j] = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				rc[i][j][k] = 1;
			}
		}
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					rd[i][j][k][l] = 1;
				}
			}
		}
	}
	for(i=0; i<10; i++)
	{
		da[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			db[i][j] = 1;
		}
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					dd[i][j][k][l] = 1;
				}
			}
		}
	}
	for(i=0; i<10; i++)
	{
		qa[i] = 1;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			qb[i][j] = 1;
		}
	}
	for(i=0; i<10; i++)
	{
		cea[i].real = 2;
		cea[i].imag = 2;
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			ceb[i][j].real = 1;
			ceb[i][j].imag = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				cec[i][j][k].real = 1;
				cec[i][j][k].imag = 1;
			}
		}
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					ced[i][j][k][l].real = 1;
					ced[i][j][k][l].imag = 1;
				}
			}
		}
	}
	for(j=0; j<10; j++)
	{
		for(i=0; i<10; i++)
		{
			cdb[i][j].dreal = 1;
			cdb[i][j].dimag = 1;
		}
	}
	for(k=0; k<10; k++)
	{
		for(j=0; j<10; j++)
		{
			for(i=0; i<10; i++)
			{
				cdc[i][j][k].dreal = 1;
				cdc[i][j][k].dimag = 1;
			}
		}
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					cdd[i][j][k][l].dreal = 1;
					cdd[i][j][k][l].dimag = 1;
				}
			}
		}
	}
	for(i=0; i<10; i++)
	{
		l4a[i] = 0;
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					id[i][j][k][l] = 1;
				}
			}
		}
	}
	for(I1=1; I1<=10; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			RB(I1,I2) = RB(I1,I2) + 1;
			DB(I1,I2) = (double)(RB(I1,I2)) * (double)(RA(I1));
			for(I3=1; I3<=10; I3++)
			{
				for(I4=1;I4<=10;I4++)
				{
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
					RD(I4,I3,I2,I1) = RD(I4,I3,I2,I1) + 1;
					DD(I4,I3,I2,I1) = DD(I4,I3,I2,I1) + 1;
					ID(I4,I3,I2,I1) = ID(I4,I3,I2,I1) + 1;
					CED(I4,I3,I2,I1).real = CED(I4,I3,I2,I1).real + 1;
					CED(I4,I3,I2,I1).imag = CED(I4,I3,I2,I1).imag + 1;
					CDD(I4,I3,I2,I1).dreal = CDD(I4,I3,I2,I1).dreal + 1;
					CDD(I4,I3,I2,I1).dimag = CDD(I4,I3,I2,I1).dimag + 1;
LBL_14:
					;
				}
LBL_13:
				;
			}
LBL_12:
			;
		}
LBL_11:
		;
	}
	printf(" ****LOOP1**\n");
	printf(" RB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",RB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" DB \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" RD \n");
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %g ",RD(i,j,k,l));
				}
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" DD \n");
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %g ",DD(i,j,k,l));
				}
				printf("\n");
			}
		}
	}
	printf("\n");
	printf(" ID , CED , CDD \n");
	m = 0;
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf(" %ld (%g,%g) (%g,%g) ",ID(i,j,k,l),
					    CED(i,j,k,l).real,CED(i,j,k,l).imag,
					    CDD(i,j,k,l).dreal,CDD(i,j,k,l).dreal);
					m++;
					if(m == 4)
					{
						printf("\n");
						m = 0;
					}
				}
			}
		}
	}
	printf("\n");
	if(L4A(II) == 1) goto LBL_27;
	for(I1=1; I1<=10; I1++)
	{
		RA(I1) = RA(I1) * RB(I1,I1);
		goto LBL_24;
LBL_25:
		;
		DA(I1) = RA(I1) + DB(I1,I1);
		for(I2=1; I2<=10; I2++)
		{
			for(I3=1; I3<=10; I3++)
			{
				RC(I3,I2,I1) = RA(I1) + RB(I2,I3);
				CEC(I3,I2,I1).real = (float)(RC(I3,I2,I1));
				CEC(I3,I2,I1).imag = (float)(RC(I3,I2,I1)) + 1;
LBL_23:
				;
			}
LBL_22:
			;
		}
		QA(I1) = QB(I1,I1);
		goto LBL_26;
LBL_24:
		;
		CEA(I1).real = CEB(I1,I1).real;
		CEA(I1).imag = CEB(I1,I1).imag;
		goto LBL_25;
LBL_26:
		;
		CDA(I1).dreal = CDB(I1,I1).dreal;
		CDA(I1).dimag = CDB(I1,I1).dimag;
LBL_21:
		;
	}
LBL_27:
	;
	printf(" ***** LOOP2**\n");
	printf(" RA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",RA(i));
	}
	printf("\n");
	printf(" DA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");
	printf(" RC \n");
	m = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",RC(i,j,k));
				m++;
				if(m == 25)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" CEC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CEC(i,j,k).real,CEC(i,j,k).imag);
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" QA \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",(double)QA(i));
	}
	printf("\n");
	printf(" CEA \n");
	for(i=1; i<=10; i++)
	{
		printf(" (%g,%g) ",CEA(i).real,CEA(i).imag);
	}
	printf("\n");
	printf(" CDC \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CDC(i,j,k).dreal,CDC(i,j,k).dimag);
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
