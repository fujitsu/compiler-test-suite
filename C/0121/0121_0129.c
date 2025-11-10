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
#define DC10(i,j,k) dc10[i-1][j-1][k-1]
#define DC20(i,j,k) dc20[i-1][j-1][k-1]
#define DC30(i,j,k) dc30[i-1][j-1][k-1]
#define DD10(i,j,k,l) dd10[i-1][j-1][k-1][l-1]
#define LD10(i) ld10[i-1]
#define LD30(i,j,k) ld30[i-1][j-1][k-1]
double da10[20],da20[20],da30[20],da40[20],
db10[20][20],db20[20][20],db30[20][20],
dc10[20][20][20],dc20[20][20][20],dc30[20][20][20],
dd10[10][10][10][10];
unsigned long int ld10[20],ld30[20][20][20];
int main()
{
	long int IT1=1,IT2=2,IT3=10;
	long int i,j,k,l,n,I1,I2,I3,I4;
	double DX,DY;

	for(i=0; i<20; i++)
	{
		da10[i] = 1.0;
	}
	for(i=0; i<20; i++)
	{
		da20[i] = 2.0;
	}
	for(i=0; i<20; i++)
	{
		da30[i] = 3.0;
	}
	for(i=0; i<20; i++)
	{
		da40[i] = 4.0;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db10[i][j] = 2.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db20[i][j] = 4.0;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db30[i][j] = 1.0;
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
				dc20[i][j][k] = 2.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc30[i][j][k] = 3.0;
			}
		}
	}
	for(l=0; l<10; l++)
	{
		for(k=0; k<10; k++)
		{
			for(j=0; j<10; j++)
			{
				for(i=0; i<10; i++)
				{
					dd10[i][j][k][l] = 1.0;
				}
			}
		}
	}
	for(i=0; i<20; i++)
	{
		ld10[i] = 0;
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
	for(i=1; i<=IT3; i++)
	{
		DA10(i) = DA20(i+1) + DA30(i+IT3);
		DA20(i) = DA40(i+2) * DA30(i) - DA10(i);
		for(j=11; j<=20; j++)
		{
			DB10(i,j) = DB20(i,j) + DB30(IT3,j);
			DB20(i,j) = DB30(i,j) * 2.0;
			DX = (DB10(i,j) > DB20(i,j)) ? DB10(i,j):DB20(i,j);
			DY = DB10(i,j-1) - DB20(i+IT3,j);
			DB30(i,j) = DX - DY;
			n = j;
			for(k=1; k<=n-1; k++)
			{
				DC10(i,j,k) = DC20(i,j,k) + DB10(i,k);
				DC20(i,j,k) = DC30(i,j,k) + DC10(i,j-1,k);
			}
LBL_20:
			;
		}
		DA30(i) = DA30(i+1) - DA10(i) + DA20(i);
		DA40(1) = DA40(1) + DB10(i,1);
LBL_10:
		;
	}
	printf("  ***  ** NO.1 *** \n");
	for(i=1; i<=10; i++)
	{
		printf("  (DA10(i))  %g ",DA10(i));
	}
	printf("\n");
	for(i=1; i<=10; i++)
	{
		printf("  (DA20(i))  %g ",DA20(i));
	}
	printf("\n");
	for(i=1; i<=10; i++)
	{
		printf("  (DA30(i))  %g ",DA30(i));
	}
	printf("\n");
	printf("  (DA40)  %g\n",DA40(1));
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf("  (DB10(i,j))  %g ",DB10(i,j));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf("  (DB20(i,j))  %g ",DB20(i,j));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf("  (DB30(i,j))  %g ",DB30(i,j));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(k=1; k<=20; k++)
	{
		for(j=11; j<=20; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf("  (DC10(i,j,k))  %g ",DC10(i,j,k));
			}
			
			printf("\n");
			
		}
	}
	printf("\n");
	for(k=1; k<=20; k++)
	{
		for(j=11; j<=20; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf("  (DC20(i,j,k))  %g ",DC20(i,j,k));
			}
			
			printf("\n");
			
		}
	}
	printf("\n");
	for(i=IT1; i<=9; i++)
	{
		for(j=i; j<=10; j++)
		{
			DB30(i,j) = DB10(i,j+1) + DB20(i+1,j);
			for(k=IT3; k>=2; k-=1)
			{
				DC30(i,j,k) = DC20(i,j,k-1) - DC10(i,j,k);
				DC20(i,j,k) = DC30(i+10,j,k) + DD10(i,j,k,IT2);
				if (DC30(i,j,k) > DC20(i,j,k))
				{
					LD30(i,j,k) = 1;
				}
LBL_50:
				;
			}
			DB10(i,j) = DB30(i,j) + DA10(j+1);
			DB20(i,j) = DB30(i,j) + DA20(j+2);
LBL_40:
			;
		}
		DA10(i) = DA30(i) + DA40(i);
		DA20(i) = (DA30(i) > DA40(i)) ? DA30(i):DA40(i);
		DX = DA10(i) - DA20(i);
		if (DX > 3.0)
		{
			LD10(i) = 1;
		}
LBL_30:
		;
	}
	printf("  ***  ** NO.2 *** \n");
	for(i=1; i<=10; i++)
	{
		printf("  (DA10(i))  %g ",DA10(i));
	}
	printf("\n");
	for(i=1; i<=10; i++)
	{
		printf("  (DA20(i))  %g ",DA20(i));
	}
	printf("\n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf("  (DB10(i,j))  %g ",DB10(i,j));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf("  (DB20(i,j))  %g ",DB20(i,j));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(j=1; j<=10; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf("  (DB30(i,j))  %g ",DB30(i,j));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(k=10; k<=20; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf("  (DC20(i,j,k))  %g ",DC20(i,j,k));
			}
			
			printf("\n");
			
		}
	}
	printf("\n");
	for(k=10; k<=20; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf("  (DC30(i,j,k))  %g ",DC30(i,j,k));
			}
			
			printf("\n");
			
		}
	}
	printf("\n");
	for(k=10; k<=20; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf("  (LD30(i,j,k))  %lu ",LD30(i,j,k));
			}
			
			printf("\n");
			
		}
	}
	printf("\n");
	for(I1=11; I1<=20; I1++)
	{
		for(I2=1; I2<=10; I2++)
		{
			DA30(I1) = DA30(I1) + DB10(I1,I2) + DA10(I2);
			DB20(I1,I2) = DC30(I1,10,I2) + DC10(10,I1,I2);
			for(I3=2; I3<=I2; I3++)
			{
				DC30(I1,10,I3) = DC20(I1,I2,I3) / 2.0;
				for(I4=I3; I4<=10; I4++)
				{
					DD10(I1-10,I2,I3,I4)
					    = DD10(I1-10,I2,I3,I4) + DC20(I1,I2,I4);
LBL_80:
					;
				}
				DC20(I1,I2,I3) = DC30(I1,I2,I3) + DC10(10,I1,I3);
LBL_70:
				;
			}
		}
		DA10(I1) = DA40(I1) + DA30(I1-1);
LBL_60:
		;
	}
	printf("  ***  ** NO.3 *** \n");
	for(i=11; i<=20; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");
	for(i=11; i<=20; i++)
	{
		printf("  (DA30(i))  %g ",DA30(i));
	}
	printf("\n");
	for(j=1; j<=10; j++)
	{
		for(i=11; i<=20; i++)
		{
			printf("  (DB20(i,j))  %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=11; i<=20; i++)
			{
				printf("  (DC20(i,j,k))  %g ",DC20(i,j,k));
			}
			
			printf("\n");
			
		}
	}
	printf("\n");
	for(k=1; k<=10; k++)
	{
		for(i=11; i<=20; i++)
		{
			printf("  (DC30(i,10,k))  %g ",DC30(i,10,k));
		}
		
		printf("\n");
		
	}
	printf("\n");
	for(l=1; l<=10; l++)
	{
		for(k=1; k<=10; k++)
		{
			for(j=1; j<=10; j++)
			{
				for(i=1; i<=10; i++)
				{
					printf("  (DD10(i,j,k,l))  %g ",DD10(i,j,k,l));
				}
				
				printf("\n");
				
			}
		}
	}
	printf("\n");
	exit (0);
}
