#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DB40(i,j) db40[i-1][j-1]
#define IA10(i) ia10[i-1]
#define IA20(i) ia20[i-1]
#define IA30(i) ia30[i-1]
#define IA40(i) ia40[i-1]
#define IB10(i,j) ib10[i-1][j-1]
#define IB20(i,j) ib20[i-1][j-1]
#define IB30(i,j) ib30[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
unsigned long int ld10[50],ld20[50][50];
double da10[51],da20[51],da30[51],da40[51],db10[50][50],db20[50][50],
db30[50][50],db40[50][50];
double DX,DY;
long int ia10[50],ia20[50],ia30[50],ia40[50],ib10[50][50],ib20[50][50],
ib30[50][50];
COMPLEX16 cd10[50],cd20[50],cd30[50];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=5;
	long int IT4=10;
	long int IT6=20;
	long int IT7=30;
	short int HINV,HINT;
	long int INV1,INV2,INV3,I,J,K,i,j,k,ITRM,INV,IVAL1,IVAL2,ICNT1;

	for(i=0;i<51;i++)
	{
		da10[i]=2.0;
		da20[i]=4.0;
		da30[i]=6.0;
	}
	for(i=0;i< 10;i++)
	{
		da40[i]=2.0;
		da40[i+10]=10.0;
	}
	for(i=20;i< 40;i++)
	{
		da40[i]=1.2;
	}
	for(i=40;i<51;i++)
	{
		da40[i]=2.4;
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			db10[i][j]=1.0;
		}
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			db20[i][j]=2.0;
		}
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			db30[i][j]=3.0;
		}
	}
	for(j=0;j< 20;j++)
	{
		for(i=0 ; i< 50;i++)
		{
			db40[i][j]=4.0;
			db40[i][j+20]=8.0;
		}
	}
	for(j=40;j <50;j++)
	{
		for(i=0;i <50;i++)
		{
			db40[i][j]=12.0;
		}
	}
	for(i=0;i< 50;i++)
	{
		ia10[i]=1;
	}
	for(i=0;i< 50;i++)
	{
		ia20[i]=2;
	}
	for(i=0;i< 50;i++)
	{
		ia30[i]=3;
	}
	for(i=0;i< 50;i++)
	{
		ia40[i]=4;
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			ib10[i][j]=2;
		}
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			ib20[i][j]=3;
		}
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			ib30[i][j]=6;
		}
	}
	for(i=0;i< 50;i++)
	{
		ld10[i]=0;
	}
	for(j=0;j< 50;j++)
	{
		for(i=0;i< 50;i++)
		{
			ld20[i][j]=0;
		}
	}
	for(i=0;i< 50;i++)
	{
		cd10[i].dreal=2.0;
		cd10[i].dimag=4.0;
	}
	for(i=0;i< 50;i++)
	{
		cd20[i].dreal=3.0;
		cd20[i].dimag=9.0;
	}
	for(i=0;i< 50;i++)
	{
		cd30[i].dreal=4.0;
		cd30[i].dimag=16.0;
	}

	HINV=30;
	INV1=2;
	INV2=-15;
	INV3=50;
	for(I=2;I<=IT6;I++)
	{
		HINV=HINV-1;
		DA20(HINV+21)=DA30(HINV+19)+DA40(INV2+21);
		DA30(HINV+21)=DA10(INV2+22)*DA40(INV2+22);
		INV2=INV2+1;
		DA40(INV2+21)=DA10(INV2+22)-DA20(HINV+20);
		IA10(I+IT2)=IA30(INV1+1)/IA20(INV1+3)+IA40(INV3-3);
		IA40(INV3)=IA10(IT2)*2+IA20(INV1-1);
		INV1=INV1+1;
		IA20(INV1)=IA10(I+IT2-1)+IA40(INV3-1);
		INV3=INV3-2;
LBL_10:
		;
	}

	printf("  ****  *** NO.1 *** \n");
	i=0;
	printf("(DA20)  \n");
	for(k=29; k>=10 ;k--)
	{
		printf(" %g ",DA20(k+21));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(DA30)  \n");
	for(k=29; k>=10; k--)
	{
		printf(" %g ",DA30(k+21));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(DA40)  \n");
	for(k=-16; k<=2; k++)
	{
		printf(" %g ",DA40(k+21));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(IA10)  \n");
	for(k=4; k<=22; k++)
	{
		printf(" %ld ",IA10(k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(IA20)  \n");
	for(k=1 ;k<=20; k++)
	{
		printf(" %ld ",IA20(k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(IA40)  \n");
	for(k=50; k>=10; k-=2)
	{
		printf(" %ld ",IA40(k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	printf("  ** INV1 =  %ld ** HINV =  %d   ",INV1,HINV);
	printf("\n");

	INV1=1;
	INV2=50;
	INV3=-20;
	for(I=-IT2;I<=IT4*2;I+=IT1)
	{
		DA10(I-IT1+21)=DA30(I+23)+DA20(I+IT1+21)*DA40(INV3+21);
		DA40(INV3+22)=DA20(I+IT2+21)-DA10(I+IT4+21);
		for(J=INV1;J<=IT3*5;J++)
		{
			DB10(INV1,J)=DB20(J,IT2)+DB30(INV2,J+1);
			DB20(IT3,J)=DB40(INV2,IT2)*2.0 -DB10(INV1+1,J+1);
			DB30(INV2-1,J)=DB20(J,IT2-1)-DB10(INV1,J+1);
			INV2=INV2-1;
LBL_30:
			;
		}
		INV2=49;
		INV1=INV1+1;
		INV3=INV3+1;
		DA20(I+21)=DA40(INV3+21)+DA10(I-IT1+20)*2.0;
LBL_20:
		;
	}

	printf("  ****  *** NO.2 **** \n");
	i=0;
	printf("(DA10)  \n");
	for(k=-3; k<=19; k++)
	{
		printf(" %g ",DA10(k+21));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(DA20)  \n");
	for(k=-2; k<=20; k++)
	{
		printf(" %g ",DA20(k+21));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(DA40)  \n");
	for(k=2; k<=22; k++)
	{
		printf(" %g ",DA40(k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	I=0;
	printf("(DB10)  \n");
	for(j=1; j<=25; j++)
	{
		for(i=1; i<=22; i++)
		{
			printf(" %g ",DB10(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");
	i=0;
	printf("(DB20)  \n");
	for(k=1; k<=25; k++)
	{
		printf(" %g ",DB20(3,k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");
	i=0;
	printf("(DB30)  \n");
	for(k=1; k<=25; k++)
	{
		printf(" %g ",DB30(k,50-k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	HINT=2;
	ITRM=25;
	INV1=2;
	INV2=45;
	for(I=HINT;I<=ITRM;I++)
	{
		CD10(INV1).dreal=CD20(I).dreal+CD30(I+ITRM).dreal;
		CD10(INV1).dimag=CD20(I).dimag+CD30(I+ITRM).dimag;
		IA10(INV2+2)=IA20(INV1+HINT)-IA30(I*2);
		for(J=5;J<=25;J+=IT2)
		{
			IB30(INV2,J)=IB10(I,J)*IB20(J,INV1)-IB10(I,J);
			IB10(I,J+25)=IB20(J*2,INV1)+IB30(J-1,INV2);
			IB20(J*2-1,INV1)=IA20(J)+IA30(INV2);
LBL_45:
			;
		}
		INV1=INV1+2;
		CD20(I+1).dreal=CD10(INV1).dreal * CD30(I).dreal
		    -CD10(INV1).dimag * CD30(I).dimag;
		CD20(I+1).dimag=CD10(INV1).dreal * CD30(I).dimag
		    +CD10(INV1).dimag * CD30(I).dreal;
		CD30(I).dreal=sqrt(pow(CD20(I).dreal,2)+pow(CD10(INV1-1).dreal,2));
		CD30(I).dimag=sqrt(pow(CD20(I).dimag,2)+pow(CD10(INV1-1).dimag,2));
		DX=(CD30(I).dreal > 0.0) ?
		    (double)(int)(CD30(I).dreal+0.5) :
		    (double)(int)(CD30(I).dreal-0.5);
		DY=(CD30(I).dimag > 0.0) ?
		    (double)(int)(CD30(I).dimag+0.5) :
		    (double)(int)(CD30(I).dimag-0.5);
		CD30(I).dreal=(double)(DX);
		CD30(I).dimag=(double)(DY);
		INV2=INV2-1;
LBL_40:
		;
	}

	printf("  ****  *** NO.3 *** \n");
	i=0;
	printf("(CD10)   \n");
	for(k=2; k<=48; k+=2)
	{
		printf(" (%g,%g) ",CD10(k).dreal,CD10(k).dimag);
		i++;
		if(i==5)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(CD20)   \n");
	for(k=3; k<=26; k++)
	{
		printf("(%g,%g) ",CD20(k).dreal,CD20(k).dimag);
		i++;
		if(i==5)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(CD30)   \n");
	for(k=2; k<=25; k++)
	{
		printf(" (%g,%g) ",CD30(k).dreal,CD30(k).dimag);
		i++;
		if(i==5)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	printf("(IA10)   \n");
	for(k=47; k>=25; k--)
	{
		printf(" %ld ",IA10(k));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	I=0;
	printf("(IB10)   \n");
	for(j=30; j<=50; j++)
	{
		for(i=2; i<=25; i++)
		{
			printf(" %ld ",IB10(i,j));
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
	printf("(IB10)   \n");
	for(j=2; j<=25; j+=2)
	{
		for(i=9; i<=49; i+=2)
		{
			printf(" %ld ",IB20(i,j));
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
	printf("(IB30)   \n");
	for(j=5; j<=25; j+=2)
	{
		for(i=45; i>=22; i--)
		{
			printf(" %ld ",IB30(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	INV=1;
	for(I=1;I<=30;I++)
	{
		if (I == 30)goto LBL_55         ;
		IA10(I)=(IA10(I) > IA30(I)) ? IA10(I):IA30(I);
		IA20(I)=(IA20(I) > IA40(I)) ? IA20(I):IA40(I);
		IA30(I)=IA10(I)-IA20(I);
		if ( IA30(I) < 0 ) goto LBL_51;
		if ( IA30(I) == 0 ) goto LBL_52;
		goto LBL_53;
LBL_51:
		;
		LD20(1,INV)=1;
		goto LBL_55;
LBL_52:
		;
		LD20(2,INV)=1;
		goto LBL_55;
LBL_53:
		;
		LD20(3,INV)=1;
LBL_55:
		;
		INV=INV+1;
LBL_50:
		;
	}

	printf("  ****  *** NO.4 *** \n");
	I=0;
	printf("(IA10)   \n");
	for(i=1; i<=50; i++)
	{
		printf(" %ld ",IA10(i));
		I++;
		if(I==10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");
	I=0;
	printf("(IA20)   \n");
	for(i=1; i<=50; i++)
	{
		printf(" %ld ",IA20(i));
		I++;
		if(I==10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");
	I=0;
	printf("(IA30)   \n");
	for(i=1; i<=50; i++)
	{
		printf(" %ld ",IA30(i));
		I++;
		if(I==10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	I=0;
	printf("(LD20)   \n");
	for(j=1; j<=50; j++)
	{
		for(i=1; i<=3; i++)
		{
			printf(" %lu ",LD20(i,j));
			I++;
			if(I == 10)
			{
				printf("\n");
				I = 0;
			}
		}
	}
	printf("\n");

	INV1=50;
	IVAL1=0;
	IVAL2=0;
	for(I=1;I<=50;I++)
	{
		INV2=1;
		for(J=1;J<=50;J++)
		{
			IVAL1=(IB10(I,J)>IB30(J,INV1)) ? IB10(I,J):IB30(J,INV1);
			IVAL2=(IB20(INV2,J)<IB30(INV1,J)) ? IB20(INV2,J):IB30(INV1,J);
			IA10(J)=IVAL1-fabs(IVAL2);
			if ( IA10(J) <= 0 ) goto LBL_65;
			goto LBL_66;
LBL_66:
			;
			IB30(J,INV1)=IA10(J);
			LD10(J)=1;
LBL_65:
			;
			INV2=INV2+1;
		}
		INV1=INV1-1;
LBL_60:
		;
	}

	ICNT1=0;
	for(I=1;I<=50;I++)
	{
		for(J=1;J<=50;J++)
		{
			if ( LD10(J)  &&   LD20(I,J) ==1)
			{
				ICNT1=ICNT1+1;
			}
LBL_70:
			;
		}
	}

	printf("  ****  *** NO.5 **** \n");
	printf("   ICNT1 =  %ld\n",ICNT1);
	I=0;
	printf("(IA10)   \n");
	for(i=1; i<=50; i++)
	{
		printf(" %ld ",IA10(i));
		I++;
		if(I == 10)
		{
			printf("\n");
			I = 0;
		}
	}
	printf("\n");
	I=0;
	printf("(LD10)   \n");
	for(i=1; i<=50; i++)
	{
		printf(" %lu ",LD10(i));
		I++;
		if(I == 10)
		{
			printf("\n");
			I = 0;
		}
	}
	printf("\n");
	I=0;
	printf("(IB30)   \n");
	for(j=1; j<=50; j++)
	{
		for(i=1; i<=50; i++)
		{
			printf(" %ld ",IB30(i,j));
			I++;
			if(I == 10)
			{
				printf("\n");
				I = 0;
			}
		}
	}
	printf("\n");
	exit (0);
}
