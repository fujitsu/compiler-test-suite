#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) d.da10[i-1]
#define DA20(i) d.da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) c.cd30[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define DC10(i) d.dc10[i-1]
#define DC20(i) c.dc20[i-1]
union{
	double da10[50];
	double da20[50];
	double dc10[100];
} d;
union{
	COMPLEX16 cd30[50];
	double dc20[100]; 
} c;
double da30[50],da40[50],db10[10][50],db20[10][50],
db30[10][50];
COMPLEX16 cd10[50],cd20[50];
unsigned long int ld10[50],ld20[50],ld30[50];
int main()
{
	long int i,j,NN,I,IND1,IND2,J,IP;
	double DVL1,DVL2,DX,DY,DIF1,DVAL1,DVAL2,DVAL3,DVAL4,DN1,DIF2,DN2;
	unsigned long int LX;

	for(i=0 ; i<50 ; i++)
	{
		da30[i]=3.0;
		da40[i]=4.0;
	}
	for(j=0 ; j<50 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			db10[i][j]=0.5;
			db20[i][j]=5.0;
			db30[i][j]=-2.0;
		}
	}
	for(i=0 ; i<100 ; i++)
	{
		d.dc10[i]=1.0;
		c.dc20[i]=2.0;
	}
	for(i=0 ; i<50 ; i++)
	{
		cd10[i].dreal=1.0;
		cd10[i].dimag=2.0;
		cd20[i].dreal=-1.0;
		cd20[i].dimag=-4.0;
		c.cd30[i].dreal=-1.0;
		c.cd30[i].dimag=-4.0;
	}
	for(i=0 ; i<50 ; i++)
	{
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
	}

	NN=50;
	for(I=2 ; I<=NN ; I+=2)
	{
		LD10(I)=1^LD10(I-1);
LBL_5:
		;
	}

	LX  = 0;
	DVL1= 0.0;
	DVL2= 0.0;
	IND1= 0;
	IND2= 0;
	for(I=2 ; I<=NN ; I++)
	{
		DA10(I) = DA20(I) * CD30(I-1).dreal;
		DA20(I) = DA40(I-1) * CD20(I).dimag;
		if ( fabs(DA20(I))  >   DVL2 )
		{
			DVL2 = fabs(DA20(I));
			IND2 = I;
			LX=1^LD20(I);
		}
		DX = DA30(I) + DA10(I-1);
		DY = CD10(I-1).dimag + DA20(I-1);
		if ( DX >  DY )
		{
			LD20(I)=1;
			DIF1=DVL1-DA10(I);
			if ( DIF1  <   0.0 )
			{
				DVL1=DA10(I);
				IND1=I;
			}
			CD20(I).dreal = (double)(DX) + CD20(NN).dreal;
			CD20(I).dimag = (double)(DY) + CD20(NN).dimag;
			goto LBL_15;
		}
		LD30(I)=1^LD30(I);
		goto LBL_10;
LBL_15:
		;
		for(J=1 ; J<=10 ; J++)
		{
			DB10(J,I) = DB10(J,I) * 2.0;
			DB20(J,I) = DB20(J,I-1) * DB30(J,I);
			DB30(J,I) = DB30(J,I) + DB10(J,I-1);
LBL_20:
			;
		}
LBL_10:
		;
	}

	printf("  ***  ** NO.1 *** \n");
	printf("  DVL1 = %g  IND1 =  %ld  \n",DVL1,IND1);
	printf("  DVL2 = %g  IND2 =  %ld  \n",DVL2,IND2);
	printf("  LX =  %lu  \n",LX);
	LD10(1)=LX;

	DVAL1 = 0.0;
	DVAL2 = 0.0;
	DVAL3 = DB30(1,1);
	DVAL4 = DB20(1,1);
	IND1  = 0;
	for(I=1 ; I<=10 ; I++)
	{
		for(J=5 ; J<=50 ; J++)
		{
			if ( DB10(I,J)  >   DVAL1 )
			{
				DVAL1= DB10(I,J);
				DN1  = DA10(J) + DA20(J);
			}
			DIF2 = DVAL2 - DB20(I,J);
			if ( DIF2  <   0.0 )
			{
				DN2  = DB30(I,J);
				DVAL2= DB20(I,J);
			}
			if ( LD10(J)==1  ||   ( 1^LD30(J-1)  &&   LD20(J)) ==1)
			{
				if ( DVAL4  >   DB20(I,J) )
				{
					DVAL4=DB20(I,J);
				}
			}
			if ( DB30(I,J)  <   DVAL3 )
			{
				DVAL3 = DB30(I,J);
				DB20(I,J-1)=(DB20(I,J) > DA40(J-4)) ? DB20(I,J):DA40(J-4);
				IND1=J;
			}
LBL_30:
			;
		}
	}

	printf("  ***  ** NO.2 *** \n");
	printf("  DVAL1 = %g  DN1 =  %g  \n",DVAL1,DN1);
	printf("  DVAL2 = %g  DN2 =  %g  \n",DVAL2,DN2);
	printf("  DVAL3 = %g  IND1 =  %ld \n",DVAL3,IND1);
	printf("  DVAL4 = %g  \n",DVAL4);

	DVAL1=0.0;
	DVAL2=0.0;
	DVAL3=DC10(1);
	DVAL4=CD20(1).dimag;
	IND1 =0;
	IND2 =0;
	for(I=2 ; I<=NN ; I++)
	{
		IP=I+NN;
		DX = DA30(I) * 2.0 - DA40(I);
		DY = CD20(I).dreal - fabs(CD20(I-1).dimag);
		if ( LD30(I)==1 || (1^LD20(I) && 1^LD10(I))==1)
		{
			CD10(I).dreal = (double)(DX);
			CD10(I).dimag = (double)(DY);
		}
		else
		{
			CD10(I).dreal = (double)(DY);
			CD10(I).dimag = (double)(DX);
		}
		if ( DC10(IP)  >   DVAL1 )
		{
			DVAL1=DC10(IP);
			IND1 =IP;
		}
		if ( CD10(I-1).dimag  >   DVAL2 )
		{
			DVAL2=CD10(I-1).dimag;
			IND2 =I;
		}
		DA10(I)=(DA30(I-1) > DA40(I-1)) ? DA30(I-1):DA40(I-1);
		if ( DC10(I)  <   DVAL3 )
		{
			DVAL3=DC10(I);
		}
		DIF1=CD20(I).dimag-DVAL4;
		if ( DIF1  <   0.0 )
		{
			DVAL4=CD20(I).dimag;
		}
LBL_40:
		;
	}

	printf("  ***  ** NO.3 *** \n");
	printf("  DVAL1 = %g  IND1 =  %ld \n",DVAL1,IND1);
	printf("  DVAL2 = %g  IND2 =  %ld \n",DVAL2,IND2);
	printf("  DVAL3 = %g \n",DVAL3);
	printf("  DVAL4 = %g \n",DVAL4);
	I=0;
	printf("(DC10) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %g ",DC10(i));
		I++;
		if(I == 15)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	I=0;
	printf("(DC20) \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %g ",DC20(i));
		I++;
		if(I == 15)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	I=0;
	printf("(CD20) \n");
	for(i=1 ; i<=50 ; i++)
	{
		printf("(%g , %g) ",CD20(i).dreal,CD20(i).dimag);
		I++;
		if(I == 10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	printf("(DB20) \n");
	for(j=1 ; j<=50 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=10 ; i++)
		{
			printf(" %g ",DB20(i,j));
		}
	}
	printf("\n");

	exit (0);
}
