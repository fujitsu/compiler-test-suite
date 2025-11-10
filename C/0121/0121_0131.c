#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DC10(i,j,k) dc10[i-1][j-1][k-1]
#define DC20(i,j,k) dc20[i-1][j-1][k-1]
#define DC30(i,j,k) dc30[i-1][j-1][k-1]
#define LD10(i) ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j,k) ld30[i-1][j-1][k-1]
#define IL10(i) il10[i-1]
#define IL20(i,j) il20[i-1][j-1]
#define IL30(i,j,k) il30[i-1][j-1][k-1]
double da10[30],da20[30],da30[30],db10[20][20],db20[20][20],
db30[20][20],dc10[20][20][20],dc20[20][20][20],dc30[20][20][20];
unsigned long int ld10[30],ld20[20][20],ld30[20][20][20];
long int il10[30],il20[20][20],il30[20][20][20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int i,j,k,n,I1,I3,I2;
	short int l;
	double dx1,dx2,dy2,DCNT1,DCNT2,DCNT3;

	for(i=0; i<30; i++)
	{
		da10[i] = 1.0;
	}
	for(i=0; i<30; i++)
	{
		da20[i] = 2.0;
	}
	for(i=0; i<30; i++)
	{
		da30[i] = 3.0;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db10[i][j] = 1.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db20[i][j] = 2.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db30[i][j] = 4.0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc10[i][j][k] = 1.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc20[i][j][k] = 5.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc30[i][j][k] = 2.0;
			}
		}
	}
	for(i=0; i<30; i++)
	{
		ld10[i] = 0;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			ld20[i][j] = 0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				ld30[i][j][k] = 0;
			}
		}
	}
	for(i=1; i<=30; i++)
	{
		IL10(i) = i;
		if (i <= 20)
		{
			for(j=1; j<=20; j++)
			{
				IL20(i,j) = j;
				for(k=1; k<=20; k++)
				{
LBL_6:
					;
					IL30(i,j,k) = k;
				}
			}
		}
LBL_5:
		;
	}
	for(i=IT2; i<=15; i++)
	{
		DA10(IL10(i)) = DA20(IL10(i)) + DA30(IL10(i));
		for(j=3; j<=21-i; j++)
		{
			DB10(i,j) = DB20(i+1,j) + DB30(i,j+1);
			DB20(i,j) = DB10(i,j-1) + DB30(i+1,j);
			for(k=1; k<=10; k++)
			{
				DC10(i,j,k) = DC20(i,j-1,k+1) + DC30(i,j,k+1);
				DC20(i,j,k) = DC10(i,j,k+10) + DC30(i,j,k);
LBL_30:
				;
			}
			DB30(i,j) = DB10(i-1,j-1) - DB20(i-1,j-1);
LBL_20:
			;
		}
		DA30(IL10(i)) = DA10(i-1) * DA30(IL10(i));
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	printf(" (DA10) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");
	printf(" (DA30) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %g ",DA30(i));
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC10) \n");
	l = 0;
	for(k=1; k<=10; k++)
	{
		for(j=3; j<=12; j++)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %g ",DC10(i,j,k));
				l++;
				if(l == 25)
				{
					printf("\n");
					l = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" (DC20) \n");
	l = 0;
	for(k=1; k<=10; k++)
	{
		for(j=3; j<=12; j++)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %g ",DC20(i,j,k));
				l++;
				if(l == 25)
				{
					printf("\n");
					l = 0;
				}
			}
		}
	}
	printf("\n");
	dx1 = 0.0;
	for(i=2; i<=IL10(10); i++)
	{
		DA20(i) = DA10(i) * 2.0 - DA30(i+1);
		n = IL10(i);
		if (DA10(i) > DA20(i))
		{
			LD10(n) = 1;
		}
		for(j=2; j<=n; j++)
		{
			dx2 = DB10(i,j) + DB30(i+1,j);
			dy2 = DB20(i,j) + DB30(i,j+1);
			if (dx2 < dy2)
			{
				LD20(i,j) = 1;
			}
			DB30(i,j) = dx2 - dy2 + DB30(i,j);
			for(k=11; k<=20; k++)
			{
				DC30(k,j,i) = DC10(i+1,j+n,k-1) - DC20(i,j+1,k-1);
				DC10(i,j,k) = DC30(k-1,j-1,i) + DC20(i,j,k);
LBL_50:
				;
			}
			if (LD20(i,j) == 1)
			{
				DB10(1,j) = DB30(i,j-1) * 2.0;
			}
			else
			{
				DB10(2,j) = DB30(i-1,j) * 2.0;
			}
LBL_45:
			;
		}
		dx1 = (DA10(i) > DA20(i)) ? DA10(i) : DA20(i);
		dx1 = (dx1 > DA30(i)) ? dx1 : DA30(i);
LBL_40:
		;
	}
	printf("  ****  *** NO.2 **** \n");
	printf(" (DA20) \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA20(i));
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=2; i++)
		{
			printf(" %g ",DB10(i,j));
		}
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC30) \n");
	l = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=11; i<=20; i++)
			{
				printf(" %g ",DC30(i,j,k));
				l++;
				if(l == 20)
				{
					printf("\n");
					l = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" (DC10) \n");
	l = 0;
	for(k=11; k<=20; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC10(i,j,k));
				l++;
				if(l == 25)
				{
					printf("\n");
					l = 0;
				}
			}
		}
	}
	printf("  DX1 =  %g\n",dx1);
	DCNT1 = 0.0;
	DCNT2 = 0.0;
	DCNT3 = 0.0;
	for(I1=1; I1<=IT3; I1++)
	{
		DCNT1 = DCNT1 + DA10(I1) + DA10(I1+IT3);
		for(I2=IT2; I2<=I1; I2++)
		{
			if(DB10(I1,I2) > DCNT2)
			{
				DCNT2 = DB10(I1,I2);
			}
			DB20(I1,I2) = DB10(I1+IT1,I2) - DB30(I1,I2);
			for(I3=20; I3>=I2; I3-=1)
			{
LBL_80:
				;
				DC20(I3,I2,I1) = (DC10(I1,I2,I3) > DC30(I3,I2,I1))
				    ? DC10(I1,I2,I3) : DC30(I3,I2,I1);
			}
			DB10(I1,I2) = DA20(I2) + DA30(I2) - DB20(I1,I2);
LBL_70:
			;
		}
		DA20(I1) = DA30(i) - DB10(IT3,I1);
		if ((LD10(I1) | 1^LD20(I1,I2)) == 1)
		{
			LD30(I1,I1,I1) = 1;
		}
LBL_60:
		;
	}
	printf("  ****  *** NO.3 **** \n");
	printf("  DCNT1 =  %g\n",DCNT1);
	printf("  DCNT2 =  %g\n",DCNT2);
	printf(" (DA20) \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA20(i));
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC20) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=20; i>=2; i--)
			{
				printf(" %g ",DC20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (LD30) \n");
	l = 0;
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %lu ",LD30(i,j,k));
				l++;
				if(l == 25)
				{
					printf("\n");
					l = 0;
				}
			}
		}
	}
	printf("\n");
	exit (0);
}
