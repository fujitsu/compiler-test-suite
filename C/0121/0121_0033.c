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
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i) cd30[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
COMPLEX16 cd10[100],cd20[100],cd30[100],CDX,CDY,CDSUM;
long int id10[100],id20[100],id30[100];
double   da10[100],da20[100],da30[100],da40[100],db10[100][100],
db20[100][100],db30[100][100];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=5;
	long int IT4=10;
	long int IT5=15;
	long int IM1=-1;
	long int IM2=-2;
	long int IM3=-5;
	long int I,J,K,K1,K2,i,j,IP1,IP2,IP3;
	double   DX,DY;

	for(i=0 ; i<100 ; i++)
	{
		da10[i]=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da20[i]=3.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da30[i]=4.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		da40[i]=16.0;
	}
	for(j=0 ; j<100 ; j++)
	{
		for(i=0 ; i<100 ; i++)
		{
			db10[i][j]=1.0;
		}
	}
	for(j=0 ; j<100 ; j++)
	{
		for(i=0 ; i<100 ; i++)
		{
			db20[i][j]=1.0;
		}
	}
	for(j=0 ; j<100 ; j++)
	{
		for(i=0 ; i<100 ; i++)
		{
			db30[i][j]=0.0;
		}
	}
	for(i=0 ; i<100 ; i++)
	{
		cd10[i].dreal=1.0;
		cd10[i].dimag=2.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		cd20[i].dreal=2.0;
		cd20[i].dimag=4.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		cd30[i].dreal=3.0;
		cd30[i].dimag=1.0;
	}
	for(i=0 ; i<100 ; i++)
	{
		id10[i]=1;
	}
	for(i=0 ; i<100 ; i++)
	{
		id20[i]=2;
	}
	for(i=0 ; i<100 ; i++)
	{
		id30[i]=4;
	}

	for(I=IT1 ; I<=IT4*IT4/2 ; I++)
	{
		ID10(I) =I;
		ID20(I) =101-I;
		ID30(I) =I+1;
		for(J=I ; J<=50 ; J+=IT2)
		{
			CDX.dreal = CD10(J).dreal * CD20(J+IT1).dreal
			    - CD10(J).dimag * CD20(J+IT1).dimag;
			CDX.dimag = CD10(J).dreal * CD20(J+IT1).dimag
			    + CD10(J).dimag * CD20(J+IT1).dreal;
			CDY.dreal = CD10(J).dreal * CD30(J*2).dreal
			    - CD10(J).dimag * CD30(J*2).dimag;
			CDY.dimag = CD10(J).dreal * CD30(J*2).dimag
			    + CD10(J).dimag * CD30(J*2).dreal;
			if ( ID20(I) > I )
			{
				CDX.dreal = sqrt(fabs(CD10(J).dreal)) + CD30(J+IT4).dreal;
				CDX.dimag = sqrt(fabs(CD10(J).dimag)) + CD30(J+IT4).dimag;
				DB10(J,I) = DB20(J,I+IT2) * 2.0 - DB30(IT4,J+I);
				DX        = (double)(int)(0.5+(CDX.dreal));
				DY        = (double)(int)(0.5+(CDX.dimag));
				CDX.dreal = (double)(DY);
				CDX.dimag = (double)(DX);
			}
			else
			{
				CDY.dreal = sqrt(fabs(CD20(J).dreal+CD30(J).dreal));
				CDY.dimag = sqrt(fabs(CD20(J).dimag+CD30(J).dimag));
				DX        = (double)(int)(0.5+(CDY.dimag));
				DY        = (double)(int)(0.5+(CDY.dreal));
				CDY.dreal = (double)(DX);
				CDY.dimag = (double)(DY);
				DB20(I,J) = DB10(ID10(J),I-IM1) + DB30(I,J-IM1+IT4);
			}
			CD10(J).dreal = CD10(J).dreal + CDX.dreal - CDY.dreal;
			CD10(J).dimag = CD10(J).dimag + CDX.dimag - CDY.dimag;
			DB30(J,I)     = DB10(100,J) + DB20(J,100) - DX - DY;
LBL_10:
			;
		}
	}

	printf("  ****  *** NO.1 **** \n");
	for(K2=1 ; K2<=50 ; K2++)
	{
		for(K1=1 ; K1<=50 ; K1++)
		{
			printf(" %g ",DB10(K1,K2));
			if(K1==25 || K1==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(K2=1 ; K2<=50 ; K2++)
	{
		for(K1=1 ; K1<=50 ; K1++)
		{
			printf(" %g ",DB20(K1,K2));
			if(K1==25 || K1==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(K2=1 ; K2<=50 ; K2++)
	{
		for(K1=1 ; K1<=50 ; K1++)
		{
			printf(" %g ",DB30(K1,K2));
			if(K1==25 || K1==50)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(K1=1 ; K1<=50 ; K1++)
	{
		printf("(%g,%g) ",CD10(K1).dreal,CD10(K1).dimag);
		if(K1==25)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(I=IT1+IT2 ; I<=IT2*10+IT3*2 ; I++)
	{
		DA10(ID30(I))  = DA20(I+I+IT5) + DA30(I*3+2);
		DA30(I-IM1+IT4)= DA40(I*2+3)
		    + (double)(int)(0.5+sqrt(fabs(DA10(I))));
		IP1            = ID20(I);
		DB10(IP1,I)    = (double)(int)( 0.5+DB20(I,IP1) - DB30(IP1,I) );
		IP2            = ID30(I);
		DB20(I,IP2)    = DB10(IP2,I-1) + (double)(int)(0.5+DB30(IP2,I+2)/2.0);
		IP3            = ID30(I)+ID10(I);
		if ( IP3 > 70 )   goto LBL_20 ;
		DB30(IP3,I)    = (double)(int)(0.5+sqrt(fabs(DB10(IP3,I)+4.0)))
		    + DB20(I,IP3);
LBL_20:
		;
	}

	printf("  ****  *** NO.2 **** \n");
	for(K=1 ; K<=30 ; K++)
	{
		printf("  (DA10)  %g ",DA10(K));
		if(K==15)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(K=14 ; K<=43 ; K++)
	{
		printf("  (DA30)  %g ",DA30(K));
		if(K==28)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(J=1 ; J<=30 ; J++)
	{
		for(I=100 ; I>=71 ; I--)
		{
			printf("  (DB10)  %g ",DB10(I,J));
			if(I==85 || I==71)
			{
				printf("\n");
			}
		}
	}

	for(J=4 ; J<=33 ; J++)
	{
		for(I=1 ; I<=30 ; I++)
		{
			printf("  (DB20)  %g ",DB20(I,J));
			if(I==15 || I==30)
			{
				printf("\n");
			}
		}
	}

	for(J=1 ; J<=30 ; J++)
	{
		for(I=7 ; I<=67 ; I+=2)
		{
			printf("  (DB30)  %g ",DB30(I,J));
			if(I==27 || I==47 || I==67)
			{
				printf("\n");
			}
		}
	}

	for(I=1 ; I<=95 ; I++)
	{
		ID10(I) = ID20(I) - ID30(I+1);
		ID20(I) = (ID10(I) > ID30(I))  ?  ID10(I) : ID30(I)   ;
		ID20(I) = (ID20(I) > 5)        ?  ID20(I) : 5         ;
		if (ID10(I) < 0)  goto LBL_31;
		if (ID10(I) == 0) goto LBL_32;
		goto LBL_33;
LBL_31:
		;
		ID10(I) = -ID10(I);
		goto LBL_33;
LBL_32:
		;
		ID10(I) = 10;
LBL_33:
		;
		ID30(I) = ID10(I) + ID20(I);
		if ( ID30(I) > 70 )  ID30(I)=100;
LBL_30:
		;
	}

	printf("  ****  *** NO.3 **** \n");
	for(i=1 ; i<=100 ; i++)
	{
		printf(" %ld ",ID10(i));
		if(i==25 || i==50 || i==75 || i==100)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(i=1 ; i<=100 ; i++)
	{
		printf(" %ld ",ID20(i));
		if(i==25 || i==50 || i==75 || i==100)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(i=1 ; i<=100 ; i++)
	{
		printf(" %ld ",ID30(i));
		if(i==25 || i==50 || i==75 || i==100)
		{
			printf("\n");
		}
	}

	CDSUM.dreal = 0.0;
	CDSUM.dimag = 0.0;
	for(I=5 ; I<=IT4*(-IM3)+IT3 ; I++)
	{
		CDSUM.dreal = CDSUM.dreal + CD10(I).dreal;
		CDSUM.dimag = CDSUM.dimag + CD10(I).dimag;
		DA20(3+1-1) = DA20(3-1+1) + DA20(I);
		IP1         = ID10(I);
		IP2         = ID20(I);
		IP3         = ID30(I)-2;
		DB10(I,IP1) = DB20(IP2,I+IM2) - DB30(IP3+1,I+IT4);
		DB20(IP2,I) = DB10(I,I) * 2.0 + DB30(I,I);
		DB30(IP1,I) = DB10(I,IP3) + DB20(IP1,I);
LBL_40:
		;
	}

	printf("  ****  *** NO.4 **** \n");
	printf("  CDSUM =  %g \n",CDSUM.dreal);
	printf("  CDSUM =  %g \n",CDSUM.dimag);
	printf("  DA20 =  %g \n",DA20(3));
	for(J=5 ; J<=55 ; J++)
	{
		for(I=5 ; I<=55 ; I++)
		{
			printf("  (DB10)  %g ",DB10(I,J));
			if(I==30 || I==55)
			{
				printf("\n");
			}
		}
	}

	for(J=5 ; J<=55 ; J++)
	{
		for(I=96 ; I>=46 ; I--)
		{
			printf("  (DB20)  %g ",DB20(I,J));
			if(I==71 || I==46)
			{
				printf("\n");
			}
		}
	}

	for(J=5 ; J<=55 ; J++)
	{
		for(I=4 ; I<=54 ; I++)
		{
			printf("  (DB30)  %g ",DB30(I,J));
			if(I==29 || I==54)
			{
				printf("\n");
			}
		}
	}

	exit (0);
}
