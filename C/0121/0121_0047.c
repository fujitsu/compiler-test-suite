#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int EQIF5();
int main()
{
	printf(" ** EQIF5 **  **\n");
	EQIF5();
	exit (0);
}
#define RA(i) r.ra[i-1]
#define RB(i) r.rb[i-1]
#define RC(i,j) rc[i-1][j-1]
#define RD(i) r.rd[i-1]
#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define DC(i,j) dc[i-1][j-1]
#define CEA(i) cea[i-1]
#define CEC(i,j) cec[i-1][j-1]
#define CDA(i) cda[i-1]
#define CDB(i) cdb[i-1]
#define CDC(i,j) cdc[i-1][j-1]
#define IA(i) ia[i-1]
#define IB(i) ib[i-1]
#define IC(i,j) ic[i-1][j-1]
#define ID(i) id[i-1]
#define IE(i) ie[i-1]
#define IK(i) ik[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
#define LC(i,j) lc[i-1][j-1]
#define LD(i) ld[i-1]
#define LE(i) le[i-1]
union{
	float ra[10];
	float rb[10];
	float rd[20];
} r;


int EQIF5()
{
	float rc[10][10];
	double da[10],db[10],dc[10][10];
	COMPLEX8 cea[10],cec[10][10];
	COMPLEX16 cda[10],cdb[10],cdc[10][10];
	long int ia[10],ib[10],ic[10][10],id[20],ie[10],ik[10];
	unsigned long int la[10],lb[10],lc[10][10],ld[10],le[10];
	long int i,j,I,J;


        for(i=0;i<10;i++)
        {
            le[i]=0;
            ia[i]=ib[i]=0;
        }
 

	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			rc[i][j]=1.0;
		}
	}
	for(i=0;i<20;i++)
	{
		r.rd[i]=1.0;
	}
	for(i=0;i<10;i++)
	{
		da[i]=1.0;
	}
	for(i=0;i<10;i++)
	{
		db[i]=1.0;
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			dc[i][j]=1.0;
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			cec[i][j].real=1.0;
			cec[i][j].imag=1.0;
		}
	}
	for(i=0;i<10;i++)
	{
		cda[i].dreal=1.0;
		cda[i].dimag=1.0;
	}
	for(i=0;i< 10;i++)
	{
		cdb[i].dreal=1.0;
		cdb[i].dimag=1.0;
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			cdc[i][j].dreal=1.0;
			cdc[i][j].dimag=1.0;
		}
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			ic[i][j]=1;
		}
	}
	for(i=0;i<20;i++)
	{
		id[i]=1;
	}
	for(i=0;i<10;i++)
	{
		ik[i]=1;
	}
	for(i=0;i<10;i++)
	{
		la[i]=1;
	}
	for(i=0;i<10;i++)
	{
		lb[i]=1;
	}
	for(j=0;j<10 ;j++)
	{
		for(i=0;i<10;i++)
		{
			lc[i][j]=1;
		}
	}
	for(i=0;i<10;i++)
	{
		ld[i]=1;
	}

	for(I=2;I<=10;I++)
	{
		RA(I)=IK((int)(I*0.3+1))+I;
		if (RA(I) >= I)
		{
			RB(I)=IK(I);
			DB((int)(I*0.3+1))=RB(I)+IK(I);
			IA((int)(I*0.3+1))=I*0.3+1;
			if (IB(I) != 3)
			{
				CEA(I).real = (float)I;
				CEA(I).imag = (float)IB(I);
				for(J=1;J<=10;J++)
				{
					RC(I,J)=CEC(J,1).real+RA(I);
					DC(I,J)=RD(I+10)+ID(I+10);
					IC(I,J)=I+J;
				}
			}
		}
	}

	printf(" *** LOOP1 * EQIF5 **  ***\n");
	printf(" ### RD ###\n");
	for(i=1;i<=20;i++)
	{
		printf(" %g ",RD(i));
	}
	printf("\n");

	printf(" ### DB ###\n");
	for(i=1;i<=10;i++)
	{
		printf(" %g ",DB(i));
	}
	printf("\n");

	printf(" ### CEC ###\n");
	for(j=1;j<=10;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf("(%g , %g) ",CEC(i,j).real,CEC(i,j).imag);
		}
	}
	printf("\n");

	printf(" ### RC ###\n");
	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf(" %g ",RC(i,j));
		}
	}
	printf("\n");

	printf(" ### IC ###\n");
	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf(" %ld ",IC(i,j));
		}
	}
	printf("\n");

	printf(" ### IK ###\n");
	for(i=1;i<=10;i++)
	{
		printf(" %ld ",IK(i));
	}
	printf("\n");

	printf(" ### DC ###\n");
	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf(" %g ",DC(i,j));
		}
	}
	printf("\n");

	for(I=2;I<=10;I++)
	{
		if (RA(I) >  RB(I))
		{
			IE(I)=1;
		}
		else
		{
			IE(I)=0;
		}
		for(J=1;J<=I;J++)
		{
			CDC(I,J).dreal = (float)DA(I)+CEA(I).real;
			CDC(I,J).dimag = (float)DB(J)+CEA(I).imag;
			IC(I,J)=IA(I)+IB(I)+J;
			LC(I,J)=LE(1)&&LA(I);
		}
		if (ID(I) >  ID(I+10))
		{
			IA(I)=0;
			IB(I)=0;
			LA(I)=0;
			LB(I)=0;
			LD(IA(I)+1)=fabs(CDA(I).dreal) > fabs(CDB(I).dreal);
		}
	}

	printf(" *** LOOP2 **  ** EQIF5 **\n");
	printf(" ### CDC ###\n");
	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf("(%g , %g)",CDC(i,j).dreal,CDC(i,j).dimag);
		}
	}
	printf("\n");

	printf(" ### IC ###\n");
	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf(" %ld ",IC(i,j));
		}
	}
	printf("\n");

	printf(" ### LC ###\n");
	for(j=1;j<=10 ;j++)
	{
		printf("\n");
		for(i=1;i<=10;i++)
		{
			printf(" %lu ",LC(i,j));
		}
	}
	printf("\n");

	printf(" ### ID ###\n");
	for(i=1;i<=20;i++)
	{
		printf(" %ld ",ID(i));
	}
	printf("\n");

	printf(" ### LD ###\n");
	for(i=1;i<=10;i++)
	{
		printf(" %lu ",LD(i));
	}
	printf("\n");


	return 0;
}
