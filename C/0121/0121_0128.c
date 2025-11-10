#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i,j) da10[i-1][j-1]
#define DA20(i,j) da20[i-1][j-1]
#define DA30(i,j) da30[i-1][j-1]
#define DA40(i,j) da40[i-1][j-1]
#define DB10(i,j,k) db10[i-1][j-1][k-1]
#define DB20(i,j,k) db20[i-1][j-1][k-1]
#define DB30(i,j,k) db30[i-1][j-1][k-1]
#define LA10(i,j) la10[i-1][j-1]
#define LA20(i,j) la20[i-1][j-1]
#define DC10(i) dc10[i-1]
#define DC20(i) dc20[i-1]
#define LD10(i,j,k) ld10[i-1][j-1][k-1]
#define LD20(i,j,k) ld20[i-1][j-1][k-1]
double da10[20][20],da20[20][20],da30[20][20],da40[20][20],
db10[20][20][20],db20[20][20][20],db30[20][20][20],dc10[20],dc20[20];
unsigned long int la10[20][20],la20[20][20],
ld10[20][20][20],ld20[20][20][20];
int main()
{
	long int IT1,IT2,i,j,k;

	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da10[i][j] = 1.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da20[i][j] = 2.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da30[i][j] = 3.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			da40[i][j] = 2.0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				db10[i][j][k] = 1.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				db20[i][j][k] = 2.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				db30[i][j][k] = 4.0;
			}
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			la10[i][j] = 0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			la20[i][j] = 0;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				ld10[i][j][k] = 0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				ld20[i][j][k] = 0;
			}
		}
	}
	IT1 = 2;
	IT2 = 10;
	for(i=1; i<=10; i++)
	{
		DA10(1,i) = DA20(i,i) + DA30(IT1,i);
		DA30(1,i) = DA40(10,i) - DA20(i,i);
		for(j=i+10; j<=20; j++)
		{
			DA20(i,j) = DB30(i,j,IT2) * DA10(IT2,j);
			DA40(i,j) = DB20(i,j,j) / 2.0 + DA20(i,j-1);
			if (DA10(j,i) > DA30(j,i))
			{
				LA10(i,j) = 1;
			}
		}
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	printf(" (DA10) \n");
	for(j=1; j<=10; j++)
	{
		printf(" %g ",DA10(1,j));
	}
	printf("\n");
	printf(" (DA30) \n");
	for(j=1; j<=10; j++)
	{
		printf(" %g ",DA30(1,j));
	}
	printf("\n");
	printf(" (DA20) \n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DA20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DA20) \n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DA40(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (LA10) \n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %lu ",LA10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	IT1 = 1;
	IT2 = 2;
	for(i=IT2; i<=15; i++)
	{
		for(j=i; j<=15; j++)
		{
			if (DA20(i,j) < DA40(i,j))
			{
				LA20(j,i) = 1;
			}
			DA20(i,j) = DA40(i,j) + DA10(i,j);
			DB30(i,j,IT2) = DB30(i,j,IT1) * DA30(i,j);
			DA10(IT1,j) = DA20(i,j-IT1) - DA40(i,j+1);
LBL_30:
			;
		}
		DC10(i) = DC20(i) + DA20(15,i) - DA20(IT2,i);
		DC20(1) = DC20(1) + DB30(i,IT2,IT1);
LBL_20:
		;
	}
	printf("  ****  *** NO.2 *** \n");
	printf(" (DC10) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %g ",DC10(i));
	}
	printf("\n");
	printf(" (DC20) \n");
	for(i=1; i<=20; i++)
	{
		printf(" %g ",DC20(i));
	}
	printf("\n");
	printf(" (DA10) \n");
	for(j=1; j<=15; j++)
	{
		printf(" %g ",DA10(1,j));
	}
	printf("\n");
	printf(" (DA20) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DA20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DB30(i,j,2));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (LA20) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %lu ",LA20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	for(i=1; i<=15; i++)
	{
		DC20(i) = DC20(i) + DC10(i) - DA10(i,20);
		for(j=2; j<=i; j++)
		{
			DA20(i,j) = DA30(i,j) + DA10(j,i);
			DA10(j+1,i) = DA40(i+1,j+1) - DA30(i,j);
			for(k=2; k<=10; k+=2)
			{
				DB10(i,j,k) = DB20(i,j,k) + DB30(i,j,k);
				DB20(i,j+1,k-1) = DB10(i,j,k+1) * 2.0 - DA30(i,k);
LBL_60:
				;
			}
			DA40(i,j) = DA10(j,i) + DA30(i,j);
			DA30(20,i) = DA30(20,i) + DA40(i,j-1);
LBL_50:
			;
		}
		DC10(i) = DC20(i) * 2.0;
LBL_40:
		;
	}
	printf("  ****  *** NO.3 **** \n");
	printf(" (DC10) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %g ",DC10(i));
	}
	printf("\n");
	printf(" (DC20) \n");
	for(i=1; i<=15; i++)
	{
		printf(" %g ",DC20(i));
	}
	printf("\n");
	printf(" (DA10) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DA10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DA20) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DA20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DA30) \n");
	for(j=1; j<=15; j++)
	{
		printf(" %g ",DA30(20,j));
	}
	printf("\n");
	printf(" (DA40) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DA40(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB10) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=15; j++)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %g ",DB10(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DB20) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=15; j++)
		{
			for(i=1; i<=15; i++)
			{
				printf(" %g ",DB20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	for(i=1; i<=20; i++)
	{
		for(j=1; j<=20; j++)
		{
			if ((LA10(i,j) | LA20(j,i)) == 1)
			{
				LA10(i,j) = 1^LA20(j,i);
			}
			for(k=1; k<=20; k++)
			{
				if (DB10(i,j,k) > DB30(i,j,k))
				{
					LD10(i,j,k) = 1^LD20(i,j,k);
				}
				if (DB20(i,j,k) > DB30(i,j,k))
				{
					LD20(i,j,k) = 1^LD10(i,j,k);
				}
			}
		}
LBL_70:
		;
	}
	printf("  ****  *** NO.4 **** \n");
	printf(" (LA10) \n");
	for(j=1; j<=20; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %lu ",LA10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (LD10) \n");
	for(k=1; k<=20; k++)
	{
		for(j=1; j<=20; j++)
		{
			for(i=1; i<=20; i++)
			{
				printf(" %lu ",LD10(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (LD20) \n");
	for(k=1; k<=20; k++)
	{
		for(j=1; j<=20; j++)
		{
			for(i=1; i<=20; i++)
			{
				printf(" %lu ",LD20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
