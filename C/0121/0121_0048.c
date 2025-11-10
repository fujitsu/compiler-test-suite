#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int EQIND();
int main()
{
	EQIND();
	exit (0);
}

#define RA(i) r.ra[i-1]
#define RB(i) ra.rb[i-1]
#define X r.x
#define Y ia.y
#define ID1 ia.id1
#define ID2 r.id2
#define ID3 ra.id3
#define ID4 ib.id4
#define L4A(i,j) l4a[i-1][j-1]
#define Z ib.z
#define CEA(i) cea[i-1]
#define CEB(i,j) ceb[i-1][j-1]
#define DA(i) da[i-1]
#define DB(i) db[i-1]
#define RC(i) rc[i-1]
#define RD(i) rd[i-1]
union{
	long int id1;
	long int y;
} ia;
union{
	long int id2;
	long int x;
	long int ra[10];
} r;
union{
	long int id3;
	long int rb[10];
} ra;
union{
	long int id4;
	unsigned long int z;
} ib;

unsigned long int l4a[10][10];
COMPLEX8 cea[10],ceb[10][10];
double   da[10],db[10];
float    rc[10],rd[10];
int EQIND()
{
	long int i,j,I,J;

	for(i=0 ; i<10 ; i++)
	{
		r.ra[i]=1;
	}
	for(i=0 ; i<10 ; i++)
	{
		ra.rb[i]=1;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			l4a[i][j]=1;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		cea[i].real=1.0;
		cea[i].imag=1.0;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<10 ; i++)
		{
			ceb[i][j].real=1.0;
			ceb[i][j].imag=1.0;
		}
	}
	for(i=0 ; i<10 ; i++)
	{
		da[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		db[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		rc[i]=1.0;
	}
	for(i=0 ; i<10 ; i++)
	{
		rd[i]=1.0;
	}

	ID1=0;
	ID2=0;
	ID3=0;
	ID4=0;
	for(I=1 ; I<=10 ; I++)
	{
		if (Y > 5)
		{
			DA(Y)       = DA(Y)+DB(Y)*0.5;
			CEA(Y).real = 1.0*DA(Y)+0.5*DB(Y);
			CEA(Y).imag = 1.2*0+1.0*0;
		}
		ID1 = ID1+1;
		if (ID1 <= 10)
		{
			DB(I) = RC(ID1)+Y;
			RD(Y) = DB(I)+I+ID1;
		}
	}

	printf("****EQIND**LOOP1**\n");
	printf("(DA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");

	printf("(CEA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf("(%g,%g) ",CEA(i).real,CEA(i).imag);
	}
	printf("\n");

	printf("(DB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DB(i));
	}
	printf("\n");

	printf("Y= %ld  \n",Y);
	printf("(RB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",RB(i));
	}
	printf("\n");

	ID2=1;
	for(I=1 ; I<=10 ; I++)
	{
		ID2 = ID2+1;
		if (ID2 <= 10)
		{
			RA(ID2) = RB(I)+CEA(I).real*2.0;
			if (X >= 1)
			{
				RC(ID2) = DA(ID2)*CEA(ID2).real;
				DA(ID2) = ID2+RA(ID2);
			}
		}
	}

	printf("****EQIND** LOOP2 **\n");
	printf("(RA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",RA(i));
	}
	printf("\n");

	printf("(RC) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RC(i));
	}
	printf("\n");

	printf("(DA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");

	ID4=0;
	for(I=1 ; I<=10 ; I++)
	{
		ID4   = ID4+1;
		RD(I) = DA(I)*CEA(I).real*(1.0);
		DA(I) = RD(ID4)+RD(I)*(1.0)*CEA(I).real;
		for(J=1 ; J<=9 ; J++)
		{
			if (L4A(I,J)==1)
			{
				CEB(J,ID4).real = RD(I)*(1.0)+CEA(I).real;
				CEB(J,ID4).imag = RD(I)*(1.0)+CEA(I).imag;
			}
		}
		if (Z==1)
		{
			RA(I) = ID4+CEB(J,ID4).real+DA(I);
		}
	}

	printf("****EQIND** LOOP3 **\n");
	printf("(RD)\n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",RD(i));
	}
	printf("\n");

	printf("(DA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");

	printf("(L4A) \n");
	for(j=1 ; j<=10 ; j++)
	{
		printf("\n");
		for(i=1 ; i<=10 ; i++)
		{
			printf(" %lu ",L4A(i,j));
		}
	}
	printf("\n");

	printf("(CEB)\n");
	for(j=1 ; j<=10 ; j++)
	{
		for(i=1 ; i<=10 ; i++)
		{
			printf(" (%g,%g) ",CEB(i,j).real,CEB(i,j).imag);
			if(i==5 || i==10)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	printf("(RA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",RA(i));
	}
	printf("\n");

	ID3=0;
	for(I=2 ; I<=10 ; I++)
	{
		ID3=ID3+1;
		if (RB(I) >= 3 &&  RB(I) <= 9)
		{
			RC(I)=RD(ID3)+DB(I);
			if (DB(ID3) >  0)
			{
				DA(ID3) = RC(I)+RD(ID3)+RC(I-1);
			}
			DB(I-1) = ID1+ID2+ID3+RA(I)+RC(I)*2.0;
		}
	}

	printf("****EQIND** LOOP4 **\n");
	printf("(RB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %ld ",RB(i));
	}
	printf("\n");

	printf("(DB) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DB(i));
	}
	printf("\n");

	printf("(DA) \n");
	for(i=1 ; i<=10 ; i++)
	{
		printf(" %g ",DA(i));
	}
	printf("\n");

	return 0;
}
