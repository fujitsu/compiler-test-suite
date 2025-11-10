#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define LD10(i,j) ld10[i-1][j-1]
#define DD10(i) d.dd10[i-1]
#define DD20(i) d.dd20[i-1]
#define DD30(i) d.dd30[i-1]
#define DD40(i) d.dd40[i-1]
#define CDE1(i,j) c.cde1[i-1][j-1]
#define CDE2(i,j) c.cde2[i-1][j-1]
#define CDE3(i,j) c.cde3[i-1][j-1]
#define CDE4(i,j) c.cde4[i-1][j-1]
#define IL(i) il[i-1]
union{
	double dd10[400];
	double dd20[100];
	double dd30[100];
	double dd40[100];
} d;
union{
	COMPLEX16 cde1[30][30];
	COMPLEX16 cde2[30][10];
	COMPLEX16 cde3[30][10];
	COMPLEX16 cde4[30][10];
} c;

double da10[30][30],da20[30][30],da30[30][30];
COMPLEX16 cd10[30][30],cd30[30][30],cd20[30][30];
unsigned long int ld10[30][30];
long int il[30];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=10;
	long int III,N1,K1,K2,J1,I1,N2,J2,ICNT,I2,I,J,i,j;
	double DVAL1,DX1,DY1,DVAL;

	ICNT=0;
	for(j=0;j<30;j++)
	{
		for(i=0;i<30;i++)
		{
			da10[i][j]=1.0;
			da20[i][j]=2.0;
			da30[i][j]=3.0;
			cd10[i][j].dreal=1.0;
			cd10[i][j].dimag=2.0;
			cd20[i][j].dreal=2.0;
			cd20[i][j].dimag=1.0;
			cd30[i][j].dreal=4.0;
			cd30[i][j].dimag=2.0;
			c.cde1[i][j].dreal=2.0;
			c.cde1[i][j].dimag=4.0;
			ld10[i][j]=0;
		}
	}
	for(i=0;i<400;i++)
	{
		d.dd10[i]=10.0;
	}

	for(I=1;I<=30;I++)
	{
LBL_5:
		;
		IL(I)=31-I;
	}

	for(III=10;III<=30;III+=10)
	{
		N1=IL(III);
		for(I1=1;I1<=N1;I1++)
		{
			DD20(I1)=DA10(1,I1);
			DD30(I1)=DA20(1,I1);
			DD40(I1)=DA30(1,I1);
			for(J1=2;J1<=15;J1++)
			{
				for(K1=30;K1>=20;K1-=1)
				{
					DA10(J1,K1)=DA20(J1,K1)+DA30(K1,J1);
LBL_40:
					;
					DA30(K1,J1)=DA20(J1,K1)+DA10(I1,J1);
				}
				N2=30-J1;
				CD10(I1,N2).dreal=(CD10(I1,N2).dreal*2.0
				    +CD10(I1,N2).dimag*2.0) / (2.0*2.0+2.0*2.0)
				    +CD30(I1,J1).dreal;

				CD10(I1,N2).dimag=(CD20(I1,N2).dimag*2.0
				    -CD20(I1,N2).dreal*2.0) / (2.0*2.0+2.0*2.0)
				    +CD30(I1,J1).dimag;

				CD20(I1,N2+1).dreal=CD30(I1,J1+1).dreal-CD10(I1,1).dreal;
				CD20(I1,N2+1).dimag=CD30(I1,J1+1).dimag-CD10(I1,1).dimag;
LBL_30:
				;
			}
			DD20(I1)=DD20(I1)+DD30(I1)-DD40(I1);
			DVAL1=(DD10(I1) < DD10(I1+100))  ?  DD10(I1) : DD10(I1+100);
			DVAL1=(DVAL1 < DD10(I1+200))  ?  DVAL1 : DD10(I1+200);
			if ( DVAL1  >  CDE1(I1,I1).dimag )
			{
				LD10(I1,I1)=1;
			}
LBL_20:
			;
		}
LBL_10:
		;
	}

	ICNT=0;
	for(I2=IT2;I2<=IT3;I2++)
	{
		DD20(IL(I2))=DD20(IL(I2))+DD30(IL(I2))-DD40(I2);
		for(J2=20;J2>=11;J2-=1)
		{
			for(K2=J2;K2<=30;K2++)
			{
				DX1=((DA10(J2,K2)/3.0 +DA20(J2,K2)) > 0.0) ?
				    (double)(int)(DA10(J2,K2)/3.0 +DA20(J2,K2)+0.5):
				    (double)(int)(DA10(J2,K2)/3.0 +DA20(J2,K2)-0.5);
				DY1=((DA10(J2,K2)/4.0 +DA30(J2,K2)) > 0.0) ?
				    (double)(int)(DA10(J2,K2)/4.0 +DA30(J2,K2)+0.5):
				    (double)(int)(DA10(J2,K2)/4.0 +DA30(J2,K2)-0.5);
				CDE1(J2,K2).dreal=(double)(DX1);
				CDE1(J2,K2).dimag=(double)(DY1);
				if ( DX1 > DY1 )goto LBL_65;
				ICNT=ICNT+1;
				DA20(J2,K2)=DX1;
				goto LBL_66;
LBL_65:
				;
				DA30(J2,K2)=DY1;
				goto LBL_60;
LBL_66:
				;
				DA10(J2,K2)=DX1+DY1;
LBL_60:
				;
			}
			DA10(20,J2)=CD10(I2,J2).dreal;
LBL_55:
			;
		}
		DD30(IL(I2))=DD20(IL(I2))/2.0;
LBL_50:
		;
	}

	printf("  ***  ** NO.1 *** \n");
	printf("  ICNT =  %ld \n",ICNT);

	I=0;
	printf("(DA10)  \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf(" %g ",DA10(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(DA20) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf(" %g ",DA20(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(DA30) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf(" %g ",DA30(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(CD10) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf("(%g , %g)",CD10(i,j).dreal,CD10(i,j).dimag);
			I++;
			if(I==5)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(CD20) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf("(%g , %g)",CD20(i,j).dreal,CD20(i,j).dimag);
			I++;
			if(I==5)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(CD30) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf("(%g , %g)",CD30(i,j).dreal,CD30(i,j).dimag);
			I++;
			if(I==5)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(DD10) \n");
	for(i=1;i<=400;i++)
	{
		printf(" %g ",DD10(i));
		I++;
		if(I == 15)
		{
			printf("\n");
			I = 0;
		}
	}
	printf("\n");

	I=0;
	printf("(CDE1) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf("(%g , %g)",CDE1(i,j).dreal,CDE1(i,j).dimag);
			I++;
			if(I==5)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(LD10) \n");
	for(j=1;j<=30;j++)
	{
		for(i=1;i<=30;i++)
		{
			printf(" %lu ",LD10(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	ICNT=0;
	DVAL=0.0;
	for(I=1;I<=20;I+=IT1)
	{
		for(J=1;J<=20;J+=IT1)
		{
			DVAL=(DVAL > DA10(I,J))  ?  DVAL : DA10(I,J);
			DVAL=(DVAL > DA20(I,J))  ?  DVAL : DA20(I,J);
			DVAL=(DVAL > DA30(I,J))  ?  DVAL : DA30(I,J);
			if ( LD10(I,J) ==1)
			{
				ICNT=ICNT+1;
			}
LBL_70:
			;
		}
	}

	printf("  ***  ** NO.2 *** \n");
	printf("  DVAL =  %g \n",DVAL);
	printf("  ICNT =  %ld \n",ICNT);
	exit (0);
}
