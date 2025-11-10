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
#define LD20(i) ld20[i-1]
#define LD30(i,j) ld30[i-1][j-1]
#define LD40(i,j,k) ld40[i-1][j-1][k-1]
double da10[30],da20[30],da30[30],db10[20][20],db20[20][20],
db30[20][20],dc10[20][20][20],dc20[20][20][20],dc30[20][20][20];
unsigned long int ld10[30],ld20[30],ld30[20][20],ld40[20][20][20];
int main()
{
	long int i,j,k,ICNT,n;
	short int l;
	double dx,dy,dz;

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
			db10[i][j] = 4.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db20[i][j] = 5.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db30[i][j] = 6.0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc10[i][j][k] = 2.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc20[i][j][k] = 1.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc30[i][j][k] = 4.0;
			}
		}
	}
	for(i=0; i<30; i++)
	{
		ld10[i] = 0;
	}
	for(i=0; i<30; i++)
	{
		ld20[i] = 0;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			ld30[i][j] = 0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				ld40[i][j][k] = 0;
			}
		}
	}
	for(i=1; i<=30; i+=2)
	{
LBL_5:
		;
		LD10(i) = 1;
	}
	for(i=1; i<=20; i++)
	{
		DA10(i) = DA20(i) + DA30(i);
		DA20(i) = ((sqrt(DA10(i))) > 0.0)
		    ? (double)(int)((sqrt(DA10(i))) + 0.5)
		    : (double)(int)((sqrt(DA10(i))) - 0.5);
		if(DA20(i) < 0) goto LBL_11;
		if(DA20(i) == 0) goto LBL_12;
		goto LBL_13;
LBL_11:
		;
		DA30(i) = -DA20(i) + DA30(i);
		goto LBL_14;
LBL_12:
		;
		DA30(i) = 0.0;
		goto LBL_14;
LBL_13:
		;
		DA30(i) = DA20(i);
LBL_14:
		;
		for(j=1; j<=10; j++)
		{
			DB10(i,j) = DB20(i,j) + DB30(i,j);
			DB20(i,j) = DB20(i,j+10) * 2.0;
			if(DB10(i,j) > DB20(i,j))
			{
				LD30(i,j) = 1;
			}
			for(k=11; k<=20; k++)
			{
				dx = DC10(i,j,k) * DB30(i,j) / 2.0;
				dy = DC20(i,j,k) * DB20(i,j);
				dz = DC30(i,j,k) * DB10(i,j);
				if(dx > dz && dy > dz)
				{
					LD40(i,j,k) = 1;
				}
				else if(dz > dx || dz < dy)
				{
					LD40(i,j,k-10) = 1;
				}
				DC10(i,j,k) = DC10(i,j,k) + (dx < dy) ? dx : dy;
				DC10(i,j,k) = DC10(i,j,k) + (DC10(i,j,k) < dz)
				    ? DC10(i,j,k) : dz;
LBL_30:
				;
			}
			if(LD30(i,j) == 1)
			{
				DB30(i,j) = DB10(i,j) - DB20(i,j);
			}
LBL_20:
			;
		}
		if(LD10(i) == 1)
		{
			DA10(1) = DA10(1) + DA20(i);
		}
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	printf(" (DA10) \n");
	for(i=1; i<=20; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");
	printf(" (DA20) \n");
	for(i=1; i<=20; i++)
	{
		printf(" %g ",DA20(i));
	}
	printf("\n");
	printf(" (DA30) \n");
	for(i=1; i<=20; i++)
	{
		printf(" %g ",DA30(i));
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (LD30) \n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %lu ",LD30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC10) \n");
	l = 0;
	for(k=1; k<=20; k++)
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
	printf("\n");
	printf(" (LD40) \n");
	l = 0;
	for(k=1; k<=20; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %lu ",LD40(i,j,k));
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
	printf(" (DB30) \n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	ICNT = 0;
	for(i=1; i<=15; i++)
	{
		DA20(i) = DA10(i*2) + DA30(i*2-1);
		if(DA20(i) < DA10(i))
		{
			LD20(i) = 1;
		}
		goto LBL_45;
LBL_50:
		;
		if(LD10(i) && LD20(i) == 1)
		{
			ICNT = ICNT + 1;
		}
		for(j=20; j>=11; j-=1)
		{
			dx = ((sqrt(DB10(j,i+1))) > 0.0)
			    ? (double)(int)((sqrt(DB10(j,i+1))) + 0.5)
			    : (double)(int)((sqrt(DB10(j,i+1))) - 0.5);
			dy = fmod(DB20(j,i),DB30(j,i));
			if(dy < 0) goto LBL_61;
			goto LBL_62;
LBL_62:
			;
			DB20(j-1,i) = DB30(j,i+1) + dy;
			goto LBL_63;
LBL_61:
			;
			DB30(j,i) = dx - dy;
LBL_63:
			;
			DB10(j,i) = DB20(j,i) + DB30(j,i);
			n = j - 1;
			for(k=5; k<=n; k++)
			{
				DC20(i,j,k) = (DB10(k,i) > DB30(k,i))
				    ? DB10(k,i) : DB30(k,i);
				DC30(i,j,k) = DC10(i,j,k-1) + DC20(i,j,k-1);
				if(DC20(i,j,k) < DC30(i,j,k))
				{
					LD40(i,j,k) = 1;
				}
LBL_70:
				;
			}
LBL_60:
			;
		}
		goto LBL_41;
LBL_45:
		;
		DB20(20,i+5) = (DA10(i) > DA20(i)) ? DA10(i):DA20(i);
		DB30(20,i+5) = (DA10(i) < DA30(i)) ? DA10(i):DA30(i);
		goto LBL_50;
LBL_41:
		;
		DA10(i) = DA20(i) - DA30(i);
LBL_40:
		;
	}
	printf("  ****  *** NO.2 **** \n");
	printf(" (DA10) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");
	printf(" (LD20) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %lu ",LD20(i));
	}
	printf("\n");
	printf("  ICNT =  %ld\n",ICNT);
	printf(" (DB10) \n");
	for(j=1; j<=15; j++)
	{
		for(i=20; i>=11; i--)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=1; j<=15; j++)
	{
		for(i=20; i>=11; i--)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=1; j<=15; j++)
	{
		for(i=20; i>=11; i--)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC20) \n");
	for(k=5; k<=20; k++)
	{
		for(j=20; j>=11; j--)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %g ",DC20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DC30) \n");
	for(k=5; k<=20; k++)
	{
		for(j=20; j>=11; j--)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %g ",DC30(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (LD40) \n");
	for(k=5; k<=20; k++)
	{
		for(j=20; j>=11; j--)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %lu ",LD40(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
