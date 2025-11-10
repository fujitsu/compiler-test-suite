#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RA10(i) ra10[i-1]
#define RA20(i) ra20[i-1]
#define RA30(i) ra30[i-1]
#define RB10(i,j) rb10[i-1][j-1]
#define RB20(i,j) rb20[i-1][j-1]
#define RB30(i,j) rb30[i-1][j-1]
#define CE10(i) ce10[i-1]
#define CE20(i) ce20[i-1]
#define CE30(i) ce30[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define HD10(i) hd10[i-1]
#define HD20(i) hd20[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
float ra10[20],ra20[20],ra30[20];
float rb10[20][10],rb20[20][10],rb30[20][10];
short int hd10[20],hd20[20];
long int id10[20],id20[20],id30[20];
COMPLEX ce10[20],ce20[20],ce30[20];
unsigned long int ld10[20],ld20[20],ld30[20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=10;
	short int HT1=1;
	long int i,j,IP1,IP2,I,IP3,J,IVAL,ICNT;
	float RX,RY;

	for(i=0 ; i<20 ; i++)
	{
		hd10[i]=1;
		hd20[i]=2;
		id10[i]=1;
		id20[i]=1;
		id30[i]=1;
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
		ce10[i].real=2.0;
		ce10[i].imag=1.0;
		ce20[i].real=1.0;
		ce20[i].imag=4.0;
		ce30[i].real=3.0;
		ce30[i].imag=5.0;
	}
	for(j=0 ; j<10 ; j++)
	{
		for(i=0 ; i<20 ; i++)
		{
			rb10[i][j]=1.0;
			rb20[i][j]=2.0;
			rb30[i][j]=3.0;
		}
	}

	for(I=1 ; I<=20 ; I++)
	{
		RX=(float)(I);
		RA10(I)=RX;
		RA20(21-I)=RX;
		RA30(I)=RX*2.0;
LBL_5:
		;
	}

	IP1=-1;
	for(I=IT2 ; I<=6 ; I++)
	{
		IP2     = I*2 + HT1;
		RA10(I) = RA10(I*2) * RA30(IP2);
		RA20(I) = RA20(I*2+IP1) * 2.0 + RA30(IP2);
		if ( RA10(I)  >=  RA20(I) )
		{
			LD10(I-IP1)=1;
			goto LBL_15;
		}
		IP3=I*3;
		RX             = CE10(IP3+HT1).imag * RA30(I*2-IP1);
		RY             = CE20(IP3-IP1).imag * (float)(IT2);
		CE30(IP3).real = (float)(RX) - CE30(IP3-1).real;
		CE30(IP3).imag = (float)(RY) - CE30(IP3-1).imag;
		RA30(IP2)      = RA30(IP3+HT1) - fabs(RX-RY);
LBL_15:
		;
		RX = CE30(I*2).imag - CE10(I).real;
		RY = CE30(I*2-1).imag - CE20(I).real;
		if ( RX - RY < 0 ) goto LBL_16;
		goto LBL_17;
LBL_16:
		;
		CE10(I).real = CE10(I).real + (float)(RX);
		CE10(I).imag = CE10(I).imag + (float)(RY);
		LD20(I)=1;
		goto LBL_10;
LBL_17:
		;
		CE20(I+IP1).real = CE20(I).real + (float)(RY);
		CE20(I+IP1).imag = CE20(I).imag + (float)(RX);
		LD30(I)=1;
		IP3 = I*2;
		IP2 = I*3;
		ID10(I) = ID10(IP2)+IP3;
		ID20(I) = ID20(IP3)+IP2;
LBL_10:
		;
	}

	printf("  ***  ** NO.1 *** \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf("(RA10)%g ",RA10(i));
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("(RA20)%g ",RA20(i));
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("(RA30)%g ",RA30(i));
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("CE10=(%g,%g) ",CE10(i).real,CE10(i).imag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("CE20=(%g,%g) ",CE20(i).real,CE20(i).imag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("CE30=(%g,%g) ",CE30(i).real,CE30(i).imag);
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("LD10= %lu",LD10(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("LD20= %lu",LD20(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("LD30= %lu",LD30(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("ID10= %ld",ID10(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("ID20= %ld",ID20(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}

	for(J=IT1+1 ; J<=IT3 ; J+=2)
	{
		I=(J < 1) ? J:1;
		IVAL=0;
		ICNT=0;
		IP1=I+1;
		for(I=5 ; I<=20 ; I++)
		{
			IVAL   = IVAL + ((ID10(IP1) < ID20(I)) ? ID10(IP1):ID20(I));
			ID20(I)= ID10(I)-ID20(IP1);
			if ( LD10(I)  ||   LD20(I) ==1)
			{
				if ( LD30(I) ==1)
				{
					ICNT=ICNT+1;
					LD30(I)=1^LD10(I);
				}
			}
LBL_20:
			;
		}
		ID30(J)=IVAL;
		ID30(J-1)=ICNT;
LBL_30:
		;
	}

	printf("  ***  ** NO.2 *** \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf("ID20= %ld",ID20(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("ID30= %ld",ID30(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf("LD30= %lu ",LD30(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	exit (0);
}
