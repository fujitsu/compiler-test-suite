#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DA40(i,j) da40[i-1][j-1]
#define CD10(i,j) cd10[i-1][j-1]
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j) cd30[i-1][j-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
double    da10[20][20],da20[20][20],da30[20][20],da40[20][20];
COMPLEX16 cd10[20][20],cd20[20][20],cd30[20][20];
unsigned long int ld10[20],ld20[20],ld30[20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=5;
	long int IT5=10;
	long int I,NI,NJ,J,INC,i,j;
	double DX,DY,DZ;
	unsigned long int LX;

	for(j=0 ; j<20 ; j++)
	{
		for(i=0 ; i<20 ; i++)
		{
			da10[i][j]=2.0;
			da20[i][j]=3.0;
			da30[i][j]=1.0;
			da40[i][j]=5.0;
			cd10[i][j].dreal=1.5;
			cd10[i][j].dimag=1.2;
			cd20[i][j].dreal=2.0;
			cd20[i][j].dimag=4.0;
			cd30[i][j].dreal=1.0;
			cd30[i][j].dimag=0.5;
		}
	}
	for(i=0 ; i<20 ; i++)
	{
		ld10[i]=0;
		ld20[i]=0;
		ld30[i]=0;
	}

	for(I=IT2 ; I<=15 ; I+=IT1)
	{
		NI=1;
		if ( I > 10 )NI=2;
		NJ=2;
		for(J=I ; J<=20 ; J+=IT2)
		{
			DA10(NJ,I) = DA20(I,J) * DA40(I,NJ) - DA30(NI,NJ);
			DA40(NI,NJ)= CD10(I,NJ).dreal - CD30(NJ,I).dimag;
			if ( DA40(NI,NJ) > 0 )  goto LBL_22;
LBL_21:
			;
			LD10(J)=1;
			DA20(J,I)=CD20(J,I).dreal*2.0;
			goto LBL_25;
LBL_22:
			;
			LD20(J)=1;
			CD10(I,NJ).dreal = CD10(NI,NJ).dreal + CD20(I,J).dreal;
			CD10(I,NJ).dimag = CD10(NI,NJ).dimag + CD20(I,J).dimag;
			goto LBL_21;
LBL_25:
			;
			if ( LD10(J)  &&   LD20(J) ==1)
			{
				LD30(J)=1;
			}
			CD20(I,J-1).dreal = CD10(I,NJ-IT1).dreal + CD30(I,J).dreal;
			CD20(I,J-1).dimag = CD10(I,NJ-IT1).dimag + CD30(I,J).dimag;
			NJ=NJ+IT1*IT2;
			NI=NI+IT1;
LBL_20:
			;
		}
LBL_10:
		;
	}

	printf("  ****  ** NO.1 **** \n");
	I=0;
	printf("(DA10) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
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
	printf("(DA40) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA40(i,j));
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
	printf("(LD10) \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %lu ",LD10(i));
		I++;
		if(I==10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	I=0;
	printf("(LD20) \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %lu ",LD20(i));
		I++;
		if(I==10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	I=0;
	printf("(LD30) \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %lu ",LD30(i));
		I++;
		if(I==10)
		{
			printf("\n");
			I=0;
		}
	}
	printf("\n");

	I=0;
	printf("(DA20) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
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

	for(I=16 ; I<=20 ; I++)
	{
		NI=I-1;
		INC=I/10;
		for(J=IT3 ; J<=16 ; J+=INC)
		{
			CD30(J,I).dreal = CD30(J,I).dreal * CD20(I,NI).dreal
			    - CD30(J,I).dimag * CD20(I,NI).dimag;
			CD30(J,I).dimag = CD30(J,I).dreal * CD20(I,NI).dimag
			    + CD30(J,I).dimag * CD20(I,NI).dreal;
			DX = CD30(J,I-1).dreal + DA20(J,NI);
			DY = CD30(J,I-1).dimag - DA40(NI,J);
			if ( DX  >   DY )
			{
				LD10(J)=1^LD30(J);
				DZ=DX+DA30(I,NI);
			}
			else
			{
				LD20(J)=1^LD30(J);
				DZ=DY+DA10(NI,I);
			}
			DA20(J,NI+1) = sqrt(DZ);
			DA40(I,J-1)  = DZ-((DX < DY) ? DX:DY);
			CD20(I,NI+1).dreal = (double)(DZ) - CD30(I,J).dreal;
			CD20(I,NI+1).dimag = (double)(DX) - CD30(I,J).dimag;
			NI=NI-IT1;
LBL_30:
			;
		}
	}

	printf("  ****  ** NO.2 **** \n");
	I=0;
	printf("(DA20) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
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
	printf("(CD20) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
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
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(%g , %g) ",CD30(i,j).dreal,CD30(i,j).dimag);
			I++;
			if(I==5)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	printf("(LD10) \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %lu ",LD10(i));
		if(i==10)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(LD20) \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %lu ",LD20(i));
		if(i==10)
		{
			printf("\n");
		}
	}
	printf("\n");

	for(I=2 ; I<=IT4 ; I++)
	{
		NI=I-1;
		NJ=I+1;
		for(J=5 ; J<=IT5*2-IT2 ; J+=IT1)
		{
			LX = (1^LD10(I) || LD30(J))&&LD20(J);
			DX = (DA10(NJ,I) > DA40(NI,NJ)) ? DA10(NJ,I):DA40(NI,NJ);
			DX = DX-DA30(NI,J+1);
			if ( DX >= 0 ) goto LBL_42;
LBL_41:
			;
			DZ = -1.0;
			LD30(J-1) = 1^LD20(J)&&LX;
			DY = CD20(NJ,J).dimag-2.0 ;
			DY = CD20(NJ,J).dimag-5.0;
LBL_45:
			;
			DA10(J,I) = (double)(DX);
			DA10(J,I) = (double)(DY);
			goto LBL_46;
LBL_42:
			;
		
			DY=pow(2,5);
			DZ=1.0;
			if ( LX ==1)
			{
				goto LBL_45;
			}
			DA40(NI,NJ-1)=DY-DA20(J,I);
LBL_46:
			;
			DA30(NI,J)=DZ*DA30(I,NJ);
			DA20(J,NJ)=DZ*DY;
			NJ=NJ+IT1;
LBL_40:
			;
		}
	}

	printf("  ****  ** NO.3 **** \n");
	I=0;
	printf("(DA10) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA10(i,j));
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
	printf("(DA20) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA20(i,j));
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
	printf("(DA30) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
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
	printf("(DA40) \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DA40(i,j));
			I++;
			if(I==10)
			{
				printf("\n");
				I=0;
			}
		}
	}
	printf("\n");

	exit (0);
}
