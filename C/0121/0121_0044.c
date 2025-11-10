#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA10(i,j) r1.ra10[i-1][j-1]
#define RA20(i,j) r2.ra20[i-1][j-1]
#define RA30(i,j) ra30[i-1][j-1]
#define CE10(i,j) cf.ce10[i-1][j-1]
#define CE20(i,j) ce20[i-1][j-1]
#define CE30(i,j) ce30[i-1][j-1]
#define CEX cf.cex
#define LD10(i) l1.ld10[i-1]
#define LD20(i) l2.ld20[i-1]
#define LD30(i) l3.ld30[i-1]
#define LX l1.lx
#define LY l2.ly
#define LZ l3.lz
#define IX ia.ix
#define IP ia.ip
#define JY ja.jy
#define JP ja.jp
#define RB10(i) r1.rb10[i-1]
#define RB20(i) r2.rb20[i-1]
#define RB30(i) cf.rb30[i-1]
#define ID10(i,j) ia.id10[i-1][j-1]
#define ID20(i,j) ja.id20[i-1][j-1]
union{
	float ra10[20][20];
	float rb10[100];   
} r1;
union{
	float ra20[20][20];
	float rb20[100];   
} r2;
union{
	COMPLEX ce10[20][20];
	COMPLEX cex;
	float   rb30[100]; 
} cf;
union{
	unsigned long int ld10[20];
	unsigned long int lx;      
} l1;
union{
	unsigned long int ld20[20];
	unsigned long int ly;      
} l2;
union{
	unsigned long int ld30[20];
	unsigned long int lz;      
} l3;
union{
	long int ix;
	long int ip;
	long int id10[20][20];      
} ia;
union{
	long int jy;
	long int jp;
	long int id20[20][20];      
} ja;
float             ra30[20][20];
COMPLEX           ce20[20][20],ce30[20][20];
int main()
{
	long int i,j,I,IN,J;
	float    RVAL,RX,RY;

	RVAL = 1.0;
	for(I=1 ; I<=20 ; I++)
	{
		LD10(I) = 0;
		LD20(I) = 0;
		LD30(I) = 0;
		RX = (float)(I);
		for(J=1 ; J<=20 ; J++)
		{
			RA10(I,J) = RVAL;
			RA20(I,J) = RVAL / 2.0;
			RA30(I,J) = 10.0 - RVAL;
			RY = (float)(J);
			CE10(I,J).real = (float)RX;
			CE10(I,J).imag = (float)RY;
			CE20(I,J).real = (float)RX * 2.0;
			CE20(I,J).imag = (float)RY * 1.0;
			CE30(I,J).real = CE10(I,J).real - (float)RY;
			CE30(I,J).imag = CE10(I,J).imag - (float)RX;
			ID10(I,J)=I;
			ID20(I,J)=J;
			RVAL = RVAL+1.0;
LBL_10:
			;
		}
	}

	IP = 1;
	for(I=1 ; I<=10 ; I++)
	{
		RX = RA10(I,IP) + RB20(IP);
		RY = RB10(IP) + RA20(I,IP);
		if ( RX  >=  RY )
		{
			LD10(I)=1;
		}
		else
		{
			LD20(I)=1;
		}
		JP = IP + I * 2;
		RB30(JP) = (RX > RY)  ?  RX : RY;
		for(J=11 ; J<=20 ; J++)
		{
			ID10(I,J) = JY-IX;
			ID20(I,J) = JY+IX;
			if ( ID10(I,J)  >   ID20(I,J) )
			{
				LD30(J)=1;
			}
LBL_30:
			;
		}
		CE10(I,IP).real = (float)RX;
		CE10(I,IP).imag = (float)RY;
		IP = IP+2;
LBL_20:
		;
	}

	for(I=2 ; I<=10 ; I++)
	{
		IP = I*2-1;
		IN = I*2;
		RX = (float)(I);
		for(J=5 ; J<=20 ; J++)
		{
			JP = J*2;
			CEX.real = CE20(I,J).real + CE30(I,J).real;
			CEX.imag = CE20(I,J).imag + CE30(I,J).imag;
			RY = CEX.imag;
			if (RX - RY < 0)  goto LBL_41;
			goto LBL_42;
LBL_41:
			;
			LX = LD30(J) || 1^LZ;
			RA10(I,J)      = RA10(J,I)+RB20(JP);
			CE20(I,J).real = CE20(I+1,J-1).real - (float)RX;
			CE20(I,J).imag = CE20(I+1,J-1).imag - (float)RY;
			goto LBL_43;
LBL_42:
			;
			LY = 1^LD30(J) && LZ;
			RA20(I,J) = RA20(J,I) + RB10(IP);
			RB30(IP)  = (RX > RY)  ?  RX : RY;
			RB30(IP)  = (RB30(IP) > RB10(JP))  ?  RB30(IP) : RB10(JP);
			RB30(IN)  = (RX < RY)  ?  RX : RY;
			RB30(IN)  = (RB30(IN) < RB20(JP))  ?  RB30(IN) : RB20(JP);
LBL_43:
			;
			if ( (LX && LY) ==1)
			{
				LD30(J)=LX;
			}
			else
			{
				LD30(J)=LY;
			}
			RA30(J,I) = (float)(JY-IX);
LBL_40:
			;
		}
		ID10(IP,I) = JY-IX;
		ID20(IN,I) = JY/2+IX;
LBL_50:
		;
	}

	printf("  ***  ** NO.1 *** \n");

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(RA10) %g ",RA10(i,j));
			if(i==20)
			{
				printf("\n");
			}
		}
	}

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(RA20)  %g ",RA20(i,j));
			if(i==20)
			{
				printf("\n");
			}
		}
	}

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(RA30)  %g ",RA30(i,j));
			if(i==20)
			{
				printf("\n");
			}
		}
	}

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("CE10=(%g,%g) ",CE10(i,j).real,CE10(i,j).imag);
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("CE20=(%g,%g) ",CE20(i,j).real,CE20(i,j).imag);
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("CE30=(%g,%g) ",CE30(i,j).real,CE30(i,j).imag);
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}

	for(i=1 ; i<=20 ; i++)
	{
		printf("  (LD10)  %lu ",LD10(i));
	}
	printf("\n");

	for(i=1 ; i<=20 ; i++)
	{
		printf("  (LD20)  %lu ",LD20(i));
	}
	printf("\n");

	for(i=1 ; i<=20 ; i++)
	{
		printf("  (LD30)  %lu ",LD30(i));
	}
	printf("\n");

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("  (ID10)  %ld ",ID10(i,j));
			if(i==20)
			{
				printf("\n");
			}
		}
	}

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("  (ID20)  %ld ",ID20(i,j));
			if(i==20)
			{
				printf("\n");
			}
		}
	}

	exit (0);
}
