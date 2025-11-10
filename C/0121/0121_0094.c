#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int sub1(COMPLEX16 CDX, COMPLEX16 CDY, double DX, double DY);
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
#define CD40(i) cd40[i-1]
#define CD50(i) cd50[i-1]
double da10[20],da20[20],da30[20],db10[20][20],db20[20][20],
db30[20][20];
long int id10[20],id20[20];
static COMPLEX16 cd10[20][20],cd20[20][20],cd30[20][20],cd40[20],cd50[20];
int main (void)
{
	long int i,j,k,IVAL1,IVAL2,INV,JJ;
	double DVAL1,DVAL2;
	COMPLEX16 CDVAL;

	for(i=0;i< 20;i++)
	{
		id10[i]=1;
	}
	for(i=0;i< 20;i++)
	{
		id20[i]=0;
	}
	for(i=0;i< 20;i++)
	{
		id10[i]=1;
	}
	for(i=0;i< 20;i++)
	{
		id20[i]=0;
	}
	for(i=0;i< 20;i++)
	{
		da10[i]=1.0;
	}
	for(i=0;i< 20;i++)
	{
		da20[i]=2.0;
	}
	for(i=0;i< 20;i++)
	{
		da30[i]=4.0;
	}
	for(j=0;j< 20;j++)
	{
		for(i=0;i< 20;i++)
		{
			db10[i][j]=2.0;
		}
	}
	for(j=0;j< 20;j++)
	{
		for(i=0;i< 20;i++)
		{
			db20[i][j]=4.0;
		}
	}
	for(j=0;j< 20;j++)
	{
		for(i=0;i< 20;i++)
		{
			db30[i][j]=6.0;
		}
	}
	for(j=0;j< 20;j++)
	{
		for(i=0;i< 20;i++)
		{
			cd10[i][j].dreal=4.0;
			cd10[i][j].dimag=2.0;
		}
	}
	for(j=0;j< 20;j++)
	{
		for(i=0;i< 20;i++)
		{
			cd20[i][j].dreal=1.0;
			cd20[i][j].dimag=1.0;
		}
	}
	for(j=0;j< 20;j++)
	{
		for(i=0;i< 20;i++)
		{
			cd30[i][j].dreal=2.0;
			cd30[i][j].dimag=2.0;
		}
	}
	for(i=0;i< 20;i++)
	{
		cd40[i].dreal=4.0;
		cd40[i].dimag=16.0;
	}
	for(i=0;i< 20;i++)
	{
		cd50[i].dreal=2.0;
		cd50[i].dimag=4.0;
	}
	IVAL1=1;
	IVAL2=2;
	DVAL1=0.0;
	CDVAL.dreal=0.0;
	CDVAL.dimag=0.0;
	for(i=1;i<=20;i++)
	{
		if ( IVAL1  >   15 )goto LBL_10         ;
		for(j=10;j<=20;j++)
		{
			DA10(1)=DA20(j)+DA30(j);
			DA10(1)=DA20(j)-DA10(j)+DA10(1);
			DA20(2)=DA20(2)+DA10(j)*DA30(j)-DB20(i,j);
LBL_20:
			;
		}
		sub1(CD40(i),CD50(i),DA10(1),DA20(2));
LBL_30:
		;
		JJ = 30;
		if (IVAL2  >   40)
		{
			JJ = 40;
		}
		ID10(i)=ID20(i)+ID10(i);
		IVAL2=IVAL2+ID10(i)+(int)(0.5+DA20(i));
		if(JJ == 30) goto LBL_30;
		goto LBL_40;
LBL_40:
		;
		IVAL1=IVAL1+ID20(i);
		for(j=2;j<=10;j++)
		{
			DB10(i,j)=DB20(i,j)+DB30(i,j);
			INV=j+10;
			DB20(i,INV)=((DB10(i,j)>DB10(i,INV)) ? DB10(i,j):DB10(i,INV))
			    +DB30(j,i);
			DB30(j,j)=DB30(j+1,j-1)+CD20(j,i).dimag;
LBL_50:
			;
		}
		DVAL1=0.0;
		DVAL2=0.0;
		for(j=1;j<=20;j++)
		{
			CD40(i).dreal=CD40(i).dreal+CD10(i,j).dreal
			    -CD20(i,j).dreal+CD50(j).dreal;
			CD40(i).dimag=CD40(i).dimag+CD10(i,j).dimag
			    -CD20(i,j).dimag+CD50(j).dimag;
			CD40(i).dreal=CD40(i).dreal-CD30(i,j).dreal;
			CD40(i).dimag=CD40(i).dimag-CD30(i,j).dimag;
			if (CD20(i,j).dimag > DVAL1)
			{
				DVAL1=CD20(i,j).dimag;
			}
			DVAL2=DVAL2+CD50(j).dimag+CD10(j,i).dreal;
LBL_60:
			;
		}
		printf("  ****  *** NO.1 *** \n");
		printf("  DVAL1 = %g DVAL2 = %g\n",DVAL1,DVAL2);
		printf(" CD40 \n");
		for(i=1;i<=20;i++)
		{
			printf(" (%g,%g) ",CD40(i).dreal,CD40(i).dimag);
		}
		printf("\n");
LBL_70:
		;
	}
     if( i <= 20 ) {
	for(k=IVAL1;k<=20;k++)
	{
		CD10(i,k).dreal=CD20(i,k).dreal+CD30(i,k).dreal;
		CD10(i,k).dimag=CD20(i,k).dimag+CD30(i,k).dimag;
		CD30(k,i).dreal=CD20(i,k).dreal+CD10(k,i).dreal;
		CD30(k,i).dimag=CD20(i,k).dimag+CD10(k,i).dimag;
LBL_80:
		;
	}
     }
LBL_10:
	;
	printf("  ****  *** NO.2 **** \n");
	printf(" ID10 \n");
	for(i=1;i<=20;i++)
	{
		printf(" %ld ",ID10(i));
	}
	printf("\n");
	printf(" DB10 \n");
	for(j=1;j<=10;j++)
	{
		for(i=1;i<=10;i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" DB20 \n");
	for(j=11;j<=20;j++)
	{
		for(i=1;i<=10;i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" DB30 \n");
	for(k=1;k<=10;k++)
	{
		printf(" %g ",DB30(k,k));
	}
	printf("\n");
	printf(" IVAL1= %ld IVAL2= %ld \n",IVAL1,IVAL2);
	exit (0);
}
#define CDX1 dx.cdx1
#define CDY1 dy.cdy1
#define DUMY1(i) dx.dumy1[i-1]
#define DUMY2(i) dy.dumy2[i-1]
int sub1(CDX,CDY,DX,DY)

COMPLEX16 CDX,CDY;
double DX,DY;
{
	union {
		COMPLEX16 cdx1;
		double dumy1[2];
	} dx;
	union {
		COMPLEX16 cdy1;
		double dumy2[2];
	} dy;
	long int i;

	CDX1.dreal=CDX.dreal;
	CDX1.dimag=CDX.dimag;
	CDY1.dreal=CDY.dreal;
	CDY1.dimag=CDY.dimag;

	for(i=1;i<=2;i+=2)
	{
		DUMY1(i)=(DX > DY) ? DX:DY;
		DUMY1(i+1)=(DX > DY) ? DX-DY : 0;
		DUMY2(i)=(DX < DY) ? DX:DY;
		DUMY2(i+1)=(DX > DY) ? DX-DY : 0;
LBL_10:
		;
	}
	CDX.dreal=CDX1.dreal;
	CDX.dimag=CDX1.dimag;
	CDY.dreal=CDY1.dreal;
	CDY.dimag=CDY1.dimag;
	printf("  ****  *** SUB1 *** \n");
	printf(" CDX(%g,%g) CDY(%g,%g)\n",CDX.dreal,CDX.dimag,
	    CDY.dreal,CDY.dimag);
	printf(" DX %g  DY %g ",DX,DY);
	return 0;
}
