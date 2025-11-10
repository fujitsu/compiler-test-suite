#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB3();
int SUB2(long int i);
long int ICOM;
int main()
{
#define RV11(i) rv11[i-1]
#define RV12(i) rv12[i-1]
#define DV11(i) dv11[i-1]
#define DV12(i) dv12[i-1]
#define IV11(i) iv11[i-1]
#define CV21(i) cv21[i-1]
#define IV21(i,j) iv21[i-1][j-1]
	float rv11[10],rv12[10];
	double dv11[10],dv12[5];
	long int iv11[10],iv21[5][10];
	COMPLEX8 cv21[10];
	long int IASC=1;
	float RSMAX=0,RSDIF;
	long int ISMIN2=3,ISIDX2;
	COMPLEX8 CS21,CS22;
	long int L,I2,ISDIF,ISIDX1=0,ISMIN1=0,IT,I1,i,j;
	short int k;

	k = 0;
	for(i=0;i< 10;i++)
	{
		if(i <= 3)
		{
			k++;
			iv11[i] = k;
		}
		else
		{
			k--;
			iv11[i] = k;
		}
	}
	for(i=0;i<10;i++)
	{
		if(i == 0)
		{
			cv21[i].real = 0;
			cv21[i].imag = 0;
		}
		if(i == 1)
		{
			cv21[i].real = -1;
			cv21[i].imag = -1;
		}
		if(i == 2)
		{
			cv21[i].real = 0;
			cv21[i].imag = 1;
		}
		else
		{
			cv21[i].real = 2;
			cv21[i].imag = 1;
		}
	}
	k = 0;
	for(j=0;j< 10;j++)
	{
		for(i=0;i< 5;i++)
		{
			k++;
			if(k>=1 && k<=7)
			{
				iv21[i][j] = 2;
			}
			if(k>7 && k<=14)
			{
				iv21[i][j] = 7;
			}
			if(k>14 && k<=34)
			{
				iv21[i][j] = 3;
			}
			else
			{
				iv21[i][j] = 1;
			}
		}
	}
	for(I1=1;I1<=5;I1++)
	{
		printf(" * LOOP 1- %ld ",I1);
		for(I2=1;I2<=10;I2++)
		{
LBL_110:
			;
			RV11(I2)=I2*(10-I1);
		}
		for(I2=1;I2<=10;I2++)
		{
			DV11(I2)=(double)(I2);
			SUB2(I2);
		}
		for(I2=1;I2<=10;I2++)
		{
			DV11(I1)=RV11(I2)-I2+3.5;
			RSDIF=RV11(I2)-RSMAX;
			if(RSDIF <= 0) goto LBL_132;
			goto LBL_131;
LBL_131:
			;
			RSMAX=RV11(I2);
LBL_132:
			;
			RV12(I2)=RSDIF;
LBL_130:
			;
		}
		printf(" RSMAX= %g\n",RSMAX);
		ISDIF=IV11(I1)-ISMIN1;
		if (ISDIF <  0)
		{
			ISIDX1=ISDIF;
			ISMIN1=IV11(I1);
		}
		ISDIF=IV11(I1)-ISMIN2;
		if (ISDIF <  0)
		{
			ISIDX2=I1;
			ISMIN2=IV11(I1);
		}
		DV12(I1)=ISIDX2;
LBL_100:
		;
	}
	printf(" RV11 \n");
	for(i=1;i<=10;i++)
	{
		printf(" %g ",RV11(i));
	}
	printf("\n");
	printf(" DV11 \n");
	for(i=1;i<=10;i++)
	{
		printf(" %g ",DV11(i));
	}
	printf("\n");
	printf(" ISIDX1= %ld ISMIN1= %ld\n",ISIDX1,ISMIN1);
	printf(" ISIDX2= %ld ISMIN2= %ld\n",ISIDX2,ISMIN2);
	printf(" DV12 \n");
	for(i=1;i<=5;i++)
	{
		printf(" %g ",DV12(i));
	}
	printf("\n");
	CS22.real=1.;
	CS22.imag=2.;
	for(I1=2;I1<=5;I1++)
	{
		IT=I1;
		SUB2(IT);
		for(I2=11;I2<=20;I2++)
		{
			CV21(I2-10).real = sqrt((float)(I1));
			CV21(I2-10).imag = 0;
LBL_210:
			;
		}
		ICOM=I1;
		SUB3();
		printf(" ICOM= %ld\n",ICOM);
		CS21.real = CV21(I1-1).real;
		CS21.imag = CV21(I1-1).imag;
		CV21(I1+4).real = CS21.real * CS21.real - CS21.imag * CS21.imag;
		CV21(I1+4).imag = CS21.real * CS21.imag + CS21.imag * CS21.real;
		CS21.real = IASC + CS21.real - ICOM;
		CS21.imag = CS21.imag;
		CS22.real = CS22.real + CS21.real + CS21.real / 2.0;
		CS22.imag = CS22.imag + CS21.imag + CS21.imag / 2.0;
		for(I2=1;I2<=10;I2++)
		{
LBL_220:
			;
			IV21(I1,I2)=IV21(I1,I2)*10+IASC;
		}
LBL_200:
		;
	}
	printf(" CV21 \n");
	for(i=1;i<=10;i++)
	{
		printf(" (%g,%g) ",CV21(i).real,CV21(i).imag);
		if(i == 5)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" CS22(%g,%g)\n",CS22.real,CS22.imag);
	printf(" IV21 \n");
	for(j=1;j<=10;j++)
	{
		for(i=1;i<=5;i++)
		{
			printf(" %ld ",IV21(i,j));
		}
	}
	printf("\n");
	exit (0);
}
int SUB1()
{
	return 0;
}
int SUB2(i)

long int i;
{
	printf(" * LOOP 2- %ld ",i);
	return 0;
}
int SUB3()
{
	ICOM=-ICOM;
	return 0;
}
