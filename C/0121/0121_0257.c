#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define NX 50
#define NY 20
#define DA(i,j) da[i-1][j-1]
#define DB(i,j) db[i-1][j-1]
#define DC(i,j) dc[i-1][j-1]
#define DD(i,j) dd[i-1][j-1]
#define C1(i,j) c1[i-1][j-1]
#define C2(i,j) c2[i-1][j-1]
double da[NX][NX],db[NX][NX],dc[NX][NX],dd[NX][NX];
COMPLEX16 c1[NX][NX],c2[NX][NX];
int main()
{
	long int NN=NY,NCWNR=10,CTR;
	long int I,K,INV,J,IND,INV1,INV2;
	double DX,DIF,DSUM,DY,DZ,DS1,DS2;
	double CDX;
	for(J=1;J<=NX;J++)
	{
		for(I=1;I<=NX;I++)
		{
			DA(I,J)=1.0;
			DB(I,J)=2.0;
			DC(I,J)=3.0;
			DD(I,J)=4.0;
			C1(I,J).dreal=1.0;
			C1(I,J).dimag=2.0;
			C2(I,J).dreal=3.0;
			C2(I,J).dimag=1.0;
LBL_10:
			;
		}
	}
	DX=1.0;
	for(K=2;K<=NN;K++)
	{
		DA(K,K)=(double)(K);
		for(J=2;J<=NN/2;J++)
		{
			DB(K,J)=(double)(J);
			INV=J-1;
			DX=2.0;
			for(I=2;I<=K;I++)
			{
				INV=INV+1;
				DIF=DA(INV,J)-DX;
				if (DIF <= 0)
				{
					DX=DA(INV,J);
					IND=INV;
				}
LBL_40:
				;
			}
			DC(J,K)=DX;
			DB(K,J)=DB(J,J)+DD(J,K);
LBL_30:
			;
		}
		DD(I,J)=DX-DA(I,J);
LBL_20:
		;
	}
	for(K=2;K<=NN;K++)
	{
		INV1=1;
		for(J=K;J<=NX;J++)
		{
			DSUM=0.0;
			INV1=INV1+1;
			INV2=1;
			for(I=NY;I<=J;I++)
			{
				DX=1.0-DA(I,J)+DB(K,I);
				DY=(double)(I);
				DZ=(double)(J);
				DX=DX+DC(I,J);
				DD(INV2,J)=DX;
				C1(INV2,K).dreal=C2(INV1,INV2).dreal+1.0;
				C1(INV2,K).dimag=C2(INV1,INV2).dimag+2.0;
				INV2=INV2+1;
				C2(INV2,INV1).dreal=(double)(DY);
				C2(INV2,INV1).dimag=(double)(DZ);
				DX=DX-DC(I,J);
				DSUM=DSUM+DX-DA(I,K);
				DSUM=DSUM+DB(INV2,K);
				DC(I,J)=-DX;
LBL_120:
				;
			}
			DA(J,K)=DA(K,J)-DSUM;
LBL_110:
			;
		}
LBL_100:
		;
	}
	for(K=NY*2;K<=NX;K++)
	{
		DS1=0.0;
		for(J=K;J<=NX;J++)
		{
			DS2=0.0;
			INV1=NX;
			for(I=2;I<=J;I++)
			{
				INV2=I-1;
				DX=fabs(DA(I,K)-DA(K,I));
				DY=fabs(DC(K,I)-DC(I,J));
				DB(I,J)=DB(I,J)-DD(I,J);
				DX=C1(I,J).dreal+C2(INV1,K).dimag+DX;
				CDX=  C1(INV1,J).dreal*C2(J,INV2).dreal
				    - C1(INV1,J).dimag*C2(J,INV2).dimag;
				DY=DY+C1(INV2,J).dimag;
				C1(INV1,J).dreal=(double)(DX);
				C1(INV1,J).dimag=(double)(DY);
				C2(INV1,J-1).dreal=CDX;
				C2(INV1,J-1).dimag=(double)(0);
				INV1=INV1-1;
LBL_220:
				;
			}
			DS2=DS2+DC(K,J);
LBL_210:
			;
		}
		DS1=(DS1>DD(K,K))? DS1:DD(K,K);
LBL_200:
		;
	}
	printf("  DS1= %g",DS1);
	printf("\n");
	printf("  DS2= %g",DS2);
	printf("\n");
	CTR=0;
	printf("  DA=");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %g",DA(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf("  DB=");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %g",DB(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf("  DC=");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %g",DC(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf("  DD=");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" %g",DD(I,J));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf("  C1=");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" (%g,%g)",C1(I,J).dreal,C1(I,J).dimag);
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	CTR=0;
	printf("  C2=");
	for(J=1;J<=20;J++){
		for(I=1;I<=20;I++){
			printf(" (%g,%g)",C2(I,J).dreal,C2(I,J).dimag);
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("     ");
			}
		}
	}
	printf("\n");
	exit (0);
}
