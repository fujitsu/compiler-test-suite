#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define YEAR(i) year[i-1]
#define MONTH(i) month[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) li.id30[i-1]
#define DA10(i) dd.da10[i-1]
#define DA20(i) ad.da20[i-1]
#define DA30(i) dd.da30[i-1]
#define DA40(i) ad.da40[i-1]
#define DB10(i,j) dd.db10[i-1][j-1]
#define DB20(i,j) dc.db20[i-1][j-1]
#define DB30(i,j) bc.db30[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define IDATA(i,j,k,l) idata[i-1][j-1][k-1][l-1]
#define CD10(i) dc.cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) bc.cd30[i-1]
#define LB10(i) li.lb10[i-1]
#define LB20(i) li.lb20[i-1]
#define LB30(i) li.lb30[i-1]
#define WEEK(i,j) week[i-1][j-1]
#define WK(i) wk[i-1]
#define SDAY1(i) sday1[i-1]
#define SDAY2(i) sday2[i-1]
#define SDATA1(i) sdata1[i-1]
#define SDATA2(i) sdata2[i-1]
#define WDAT(i) wdat[i-1]
union{
	double da10[101];
	double db10[41][41];
	double da30[101];
} dd;
union{
	unsigned long int lb10[100];
	unsigned long int lb20[100];
	unsigned long int lb30[100];
	long int id30[61];
} li;
union{
	COMPLEX16 cd10[101];
	double db20[41][41];
} dc;
union{
	COMPLEX16 cd30[101];
	double db30[41][41];
} bc;
union{
	double da20[101];
	double da40[101];
} ad;

long int year[3],month[12],id10[61],id20[61];
unsigned long int ld10[100],ld20[100];
long int idata[3][12][31][2];
COMPLEX16 cd20[101];

char week[7][3],wk[4];

char sdata1[6],sdata2[6],wdat[2];

char sday1[6]={
	"12.24"};

char sday2[6]={
	" 7.16"};
int main()
{

	long int INT=7;
	long int J,I,K,IWN1,IWN2,INV,IT1,IT2,ICNT1,IVAL1,ICNT2,IVAL2;
	long int i,j,k,l,IMON1,IDAY1,IMON2,IDAY2;

	for(i=0 ; i<=60 ; i++)
	{
		id10[i]=1;
	}
	for(i=0 ; i<=60 ; i++)
	{
		id20[i]=2;
	}
	for(i=0 ; i<=60 ; i++)
	{
		li.id30[i]=3;
	}
	for(i=0 ; i<=100 ; i++)
	{
		dd.da10[i]=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		ld10[i]=0;
	}
	for(i=0 ; i<100 ; i++)
	{
		ld20[i]=0;
	}
	for(l=0 ; l<2 ; l++)
	{
		for(k=0 ; k<31 ; k++)
		{
			for(j=0 ; j<12 ; j++)
			{
				for(i=0 ; i<3 ; i++)
				{
					idata[i][j][k][l]=0;
				}
			}
		}
	}
	for(i=0 ; i<100 ; i++)
	{
		li.lb10[i]=0;
	}

	for(I=1 ; I<=100 ; I++)
	{
		LB20(I)=0;
	}

	for(J=-50 ; J<=50 ; J++)
	{
		CD10(J+51).dreal = 2.0;
		CD10(J+51).dimag = 4.0;
		CD20(J+51).dreal = 4.0;
		CD20(J+51).dimag = 16.0;
		CD30(J+51).dreal = 3.0;
		CD30(J+51).dimag = 9.0;
		DA20(J+51)       = 3.0;
	}

	for(I=-20 ; I<=20 ; I++)
	{
		for(J=-20 ; J<=20 ; J++)
		{
			DB30(I+21,J+21) = 2.0;
			DB20(I+21,J+21) = 4.0;
			DB10(I+21,J+21) = 6.0;
LBL_5:
			;
		}
	}

	WEEK(1,1)='S';
	WEEK(1,2)='U';
	WEEK(1,3)='N';
	WEEK(2,1)='M';
	WEEK(2,2)='O';
	WEEK(2,3)='N';
	WEEK(3,1)='T';
	WEEK(3,2)='U';
	WEEK(3,3)='E';
	WEEK(4,1)='W';
	WEEK(4,2)='E';
	WEEK(4,3)='D';
	WEEK(5,1)='T';
	WEEK(5,2)='H';
	WEEK(5,3)='U';
	WEEK(6,1)='F';
	WEEK(6,2)='R';
	WEEK(6,3)='I';
	WEEK(7,1)='S';
	WEEK(7,2)='A';
	WEEK(7,3)='T';

	for(I=1 ; I<=3 ; I++)
	{
		YEAR(I)=I+1982;
	}

	for(I=1 ; I<=11 ; I+=2)
	{
		if (I <= 7)
		{
			MONTH(I)  = 31;
			MONTH(I+1)=30;
		}
		else
		{
			MONTH(I+1)=31;
			MONTH(I)  =30;
		}
		if (I == 1)
		{
			MONTH(I+1)=28;
		}
		if (I == 7)
		{
			MONTH(I+1)=31;
		}
LBL_7:
		;
	}

	for(I=1 ; I<=3 ; I++)
	{
		for(J=1 ; J<=12 ; J++)
		{
			for(K=1 ; K<=31 ; K++)
			{
				if ( K >  MONTH(J) )goto LBL_10 ;
				if ( INT  >   7 )
				{
					INT=1;
				}
				IDATA(I,J,K,1)=K;
				IDATA(I,J,K,2)=INT;
				INT=INT+1;
LBL_10:
				;
			}
		}
	}

	strcpy(sdata1,sday1);
	strcpy(sdata2,sday2);

	WDAT(1)=SDATA1(1);
	WDAT(2)=SDATA1(2);
	IMON1=atoi(wdat);

	WDAT(1)=SDATA1(4);
	WDAT(2)=SDATA1(5);
	IDAY1=atoi(wdat);

	WDAT(1)=SDATA2(1);
	WDAT(2)=SDATA2(2);
	IMON2=atoi(wdat);

	WDAT(1)=SDATA2(4);
	WDAT(2)=SDATA2(5);
	IDAY2=atoi(wdat);

	printf(" %ld  %ld  %ld  %ld  \n",IMON1,IDAY1,IMON2,IDAY2);

	IWN1=1;
	IWN2=1;
	for(I=1 ; I<=3 ; I++)
	{
		for(J=1 ; J<=12 ; J++)
		{
			if ( J == IMON1 )
			{
				for(K=1 ; K<=31 ; K++)
				{
					if (IDAY1  ==  K)
					{
						IWN1=IDATA(I,J,K,2);
					}
				}
			}
			if ( J == IMON2 )
			{
				for(K=1 ; K<=31 ; K++)
				{
					if ( IDAY2 == K )
					{
						IWN2=IDATA(I,J,K,2);
					}
				}
			}
		}
		for(i=1;i<=3 ;i++)
		{
			WK(i)=WEEK(IWN1,i);
		}
		printf("  ** X-MAS ** ,%ld.%s(%s) **\n",
		    YEAR(I),sdata1,wk);
		for(i=1;i<=3 ;i++)
		{
			WK(i)=WEEK(IWN2,i);
		}
		printf("  ** MY BIRTHDAY **,%ld.%s(%s) **\n",YEAR(I),sdata2,wk);
LBL_20:
		;
	}

	for(I=-5 ; I<=20 ; I++)
	{
		INV             = I+10;
		ID10(I+31)      = ID20(INV+31) + ID30(I+3+31);
		DA10(-INV+101)  = DA20(-INV*2+101) + DA30(I+21) - DA40(INV*2+1);
		CD10(I*2+51).dreal = CD20(I+INV+51).dreal + CD30(INV+53).dreal;
		CD10(I*2+51).dimag = CD20(I+INV+51).dimag + CD30(INV+53).dimag;
		ID30(INV+31)    = ID20(INV-1+31) *  ID10(I+2+31);
		DA30(INV+1)     = sqrt(DA40(INV+1) + DA10(1-INV+101));
		DA30(INV+1)= (DA30(INV+1) > 0.0) ?
		    (double)(int)(DA30(INV+1)+0.5) : (double)(int)(DA30(INV+1)-0.5);
		CD30(I+61).dreal= CD20(I+51).dreal * 2.0 + CD10(I*2+52).dreal;
		CD30(I+61).dimag= CD20(I+51).dimag * 2.0 + CD10(I*2+52).dimag;
LBL_30:
		;
	}

	printf("  ****  *** NO.1 **** \n");
	for(K=26 ; K<=51 ; K++)
	{
		printf(" %ld",ID10(K));
		if(K==38)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=36; K<=61 ; K++)
	{
		printf(" %ld",ID30(K));
		if(K==48)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=96 ; K>=71 ; K--)
	{
		printf(" %g ",DA10(K));
		if(K==84)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=6 ; K<=31 ; K++)
	{
		printf(" %g ",DA30(K));
		if(K==18)
		{
			printf("\n");
		}
	}
	printf("\n");

	i=0;
	for(K=41 ; K<=91 ; K+=2)
	{
		printf("(%g,%g)",CD10(K).dreal,CD10(K).dimag);
		i++;
		if(i==5 )
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=56; K<=81 ; K++)
	{
		printf("(%g,%g)",CD30(K).dreal,CD30(K).dimag);
		i++;
		if(i==5 )
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	IT1=2;
	IT2=5;
	for(I=-20 ; I<=20 ; I+=IT1)
	{
		ID20(I+31) = ID30(I+IT2+31) - ID10(I+IT1+IT2+31);
		CD20(I+51).dreal = CD10(-2*I+51).dreal
		    -( CD30(-I-IT1+51).dreal+(double)(DA20(I+51)) );
		CD20(I+51).dimag = CD10(-2*I+51).dimag
		    -( CD30(-I-IT1+51).dimag+ 0 );
		if ( CD20(I+51).dreal  >=  CD20(I+51).dimag )
		{
			LB10(I+21) =1;
			DA40(I+31) =CD20(I+50).dreal * 2.0;
		}
		else
		{
			LB30(I+21) =1;
			DA40(I+31) =CD20(I+50).dimag * 2.0;
		}
		for(J=15 ; J>=-15 ; J-=1)
		{
			DB20(I+21,J+21)   = DB20(J+21,I+21)
			    + DB10(I+21,J+23) - DB30(I+21,J+21);
			DB30(I+21,J+19) =((DB20(I+21,J+21)>DB10(J+21,I+21))
			    ? DB20(I+21,J+21):DB10(J+21,I+21))
			    -((DB20(J+21,I+21)<DB10(I+21,J+21))
			    ? DB20(J+21,I+21):DB10(I+21,J+21));
LBL_45:
			;
		}
		DA20(I+51) =DB10(I+21,IT1+21) +DA40(I+21) -CD30(-2*I+51).dimag;
		if ( DA20(I+51) <=0)  goto LBL_46;
		goto LBL_47;
LBL_46:
		;
		LD10(I+21)=1;
		goto LBL_40;
LBL_47:
		;
		LD20(I+21)=1;
LBL_40:
		;
	}

	printf("  ****  *** NO.2 *** \n");
	i=0;
	for(K=11 ; K<=51 ; K++)
	{
		printf(" %ld",ID20(K));
		i++;
		if(i==5 )
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=31 ; K<=71 ; K++)
	{
		printf("(%g,%g) ",CD20(K).dreal,CD20(K).dimag);
		i++;
		if(i==5)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=11 ; K<=51 ; K++)
	{
		printf(" %g ",DA40(K));
		i++;
		if(i==5)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=31 ; K<=71 ; K++)
	{
		printf(" %g ",DA20(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=1 ; K<=40 ; K++)
	{
		printf(" %lu",LB10(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=1 ; K<=40 ; K++)
	{
		printf(" %lu",LB30(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(J=36 ; J>=6 ; J--)
	{
		for(I=1 ; I<=41 ; I++)
		{
			printf(" %g ",DB20(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	i=0;
	for(J=34 ; J>=4 ; J--)
	{
		for(I=1 ; I<=41 ; I++)
		{
			printf(" %g ",DB30(I,J));
			i++;
			if(i==10)
			{
				printf("\n");
				i=0;
			}
		}
	}
	printf("\n");

	i=0;
	for(K=1 ; K<=40 ; K++)
	{
		printf(" %lu",LD10(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	i=0;
	for(K=1 ; K<=40 ; K++)
	{
		printf(" %lu",LD20(K));
		i++;
		if(i==10)
		{
			printf("\n");
			i=0;
		}
	}
	printf("\n");

	ICNT1=0;
	IVAL1=0;
	for(I=1 ; I<=100 ; I++)
	{
		LB10(I) = 1^LD10(I) || 1^LB30(101-I);
		if ( LB10(I) ==1)
		{
			ICNT1=ICNT1+1;
			IVAL1=I;
		}
	}

	ICNT2=0;
	IVAL2=0;
	for(I=1 ; I<=60 ; I++)
	{
		INV=I-30;
		if ( LB30(I) ==1)
		{
			if ( LD10(I)  ||   LD20(I) ==1)
			{
				ICNT2 = ICNT2+1;
				IVAL2 = IVAL2+ID10(INV+31);
			}
		}
		else
		{
			ID10(1) = ID10(1)+ID10(INV+31);
		}
	}

	printf("  ****  *** NO.3 **** \n");
	printf("  ICNT1 =  %ld ** IVAL1 =  %ld  \n",ICNT1,IVAL1);
	printf("  ICNT2 =  %ld ** IVAL2 =  %ld  \n",ICNT2,IVAL2);
	j=0;
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %lu",LB10(i));
		j++;
		if(j==10)
		{
			printf("\n");
			j=0;
		}
	}
	printf("\n");

	j=0;
	for(i=1 ; i<=30 ; i++)
	{
		printf(" %lu",ID10(i));
		j++;
		if(j==10)
		{
			printf("\n");
			j=0;
		}
	}
	printf("\n");

	exit (0);
}
