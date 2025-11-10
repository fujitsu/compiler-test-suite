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
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i,j) cd30[i-1][j-1]
#define CD40(i,j,k) cd40[i-1][j-1][k-1]
double da10[20],da20[20],da30[20],da40[20],db10[20][20],db20[20][20],
db30[20][20],dc10[20][20][20],dc20[20][20][20],
dc30[20][20][20];
COMPLEX16 cd10[20],cd20[20],cd30[20][20],cd40[20][20][20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=10;
	long int i,j,k,n,j1,j2,j3,k1,k2,k3;
	double dx1,dy1,dx2,dy2,dx3,dy3;

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
				dc20[i][j][k] = 10.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc30[i][j][k] = 1.0;
			}
		}
	}
	for(i=0; i<20; i++)
	{
		cd10[i].dreal = 2;
		cd10[i].dimag = 1;
	}
	for(i=0; i<20; i++)
	{
		cd20[i].dreal = 2;
		cd20[i].dimag = 4;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cd30[i][j].dreal = 3;
			cd30[i][j].dimag = 2;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				cd40[i][j][k].dreal = 4;
				cd40[i][j][k].dimag = 5;
			}
		}
	}
	for(i=1; i<=10; i++)
	{
		n = i + 10;
		DA10(i) = DA20(i) + DA40(n);
		for(j1=1; j1<=15; j1+=2)
		{
			DB20(i,j1) = DB10(i,j1) * DB30(n,j1);
			dx1 = DB20(i,j1);
			dy1 = DB20(n,j1) * 2.0;
			if(CD30(i,j1).dimag > dx1)
			{
				dx1 = CD30(i,j1).dimag;
			}
			for(k1=2; k1<=10; k1+=IT2)
			{
				DC10(i,j1,k1) = DC20(i,j1+1,k1+IT2) + DC30(i,j1,k1+1);
				dx2 = DC10(i,j1,k1-1) * 2.0 - DC30(i,j1,k1);
				dy2 = DC20(i,j1+IT2,k1) + CD40(i,j1,k1+IT2).dimag;
				CD40(i,j1,k1).dreal = (double)(dx2);
				CD40(i,j1,k1).dimag = (double)(dy2);
LBL_25:
				;
			}
			CD30(i,j1).dreal = CD30(i,j1).dreal + (double)(dx1);
			CD30(i,j1).dimag = CD30(i,j1).dimag + (double)(dy1);
LBL_20:
			;
		}
		DA40(i) = DA30(n) + DA10(n);
		for(j2=2; j2<=n; j2++)
		{
			for(k2=2; k2<=IT3; k2++)
			{
				DB30(j2,k2) = DB20(j2,k2) - DC30(i,j2,k2);
				DB20(i,k2) = DB10(j2,k2) - DC20(i,j2,k2);
				DB10(j2,k2) = (DB30(i,k2) > DB20(i,k2))
				    ? DB30(i,k2) : DB20(i,k2);
				DC20(i,j2,k2) = DC10(i,j2,k2+IT1);
LBL_35:
				;
			}
			dx3 = sqrt(fabs(DB10(j2,IT3))) + 1.0;
			dy3 = fmod(DB20(n,j2),DB30(j2,IT3));
			CD30(i,j2).dreal = (double)(dx3);
			CD30(i,j2).dimag = (double)(dy3);
LBL_30:
			;
		}
		DA30(i) = DA40(n) + DA20(i);
		CD10(i).dreal = CD10(n).dreal + (double)(DA30(i));
		CD10(i).dimag = CD10(n).dimag + (double)(DA40(i));
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	printf(" (DA10) \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");
	printf(" (DA30) \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA30(i));
	}
	printf("\n");
	printf(" (DA40) \n");
	for(i=1; i<=10; i++)
	{
		printf(" %g ",DA40(i));
	}
	printf("\n");
	printf(" (CD10) \n");
	for(i=1; i<=10; i++)
	{
		printf(" (%g,%g) ",CD10(i).dreal,CD10(i).dimag);
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD30) \n");
	k = 0;
	for(j=1; j<=15; j++)
	{
		for(i=1; i<=15; i++)
		{
			printf(" (%g,%g) ",CD30(i,j).dreal,CD30(i,j).dimag);
			k++;
			if(k == 9)
			{
				printf("\n");
				k = 0;
			}
		}
	}
	printf("\n");
	printf(" (DC10) \n");
	for(k=2; k<=10; k+=2)
	{
		for(j=1; j<=15; j+=2)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC10(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DC20) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=15; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (CD40) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=10; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CD40(i,j,k).dreal,CD40(i,j,k).dimag);
			}
			printf("\n");
		}
	}
	printf("\n");
	for(i=1; i<=19; i+=2)
	{
		n = i + 1;
		for(j1=11; j1<=20; j1++)
		{
			for(k1=1; k1<=10; k1++)
			{
				dx1 = DC10(i,j1,k1) + DC20(i,j1,k1);
				dy1 = DC10(i,j1,k1) + DC30(i,j1,k1);
				if(CD40(i,j1,k1).dreal > dx1)
				{
					dx1 = CD40(i,j1,k1).dreal;
				}
				if(CD40(i,j1,k1).dimag > dy1)
				{
					dy1 = CD40(i,j1,k1).dimag;
				}
				CD40(i,j1,k1).dreal = (double)(dx1);
				CD40(i,j1,k1).dimag = (double)(dy1);
LBL_50:
				;
			}
			DC10(i,j1,1) = ((DC30(i,j1,j1) / DC20(i,j1,k1)) > 0.0)
			    ? (double)(int)((DC30(i,j1,j1) / DC20(i,j1,k1))
			    + 0.5)
			    : (double)(int)((DC30(i,j1,j1) / DC20(i,j1,k1))
			    - 0.5);
LBL_45:
			;
		}
		for(j2=IT2; j2<=10; j2++)
		{
			DA10(i) = DA10(i) + fmod(DA20(j2),DA30(j2));
			for(k2=1; k2<=j2; k2++)
			{
				DA20(k2) = DA40(k2) - CD20(j2).dimag;
				DA30(k2) = DA40(k2) * 2.0;
				CD20(k2).dreal = (double)(DA20(k2));
				CD20(k2).dimag = (double)(DA30(k2));
			}
LBL_60:
			;
		}
		DA40(n) = DA40(i) + (sqrt(DA10(n)) > 0.0)
		    ? (double)(int)(sqrt(DA10(n)) + 0.5)
		    : (double)(int)(sqrt(DA10(n)) - 0.5);
		for(j3=20; j3>=11; j3-=1)
		{
			DB10(10,j3) = DA40(j3) + DA10(i) - DA20(j3);
			for(k3=10; k3>=1; k3-=1)
			{
				dx3 = DB10(k3,j3) - DB20(k3,j3);
				dy3 = DB10(k3,j3) - DB30(k3,j3);
				DB30(j3,k3) = (dx3 > dy3) ? dx3 : dy3;
				CD30(j3,k3).dreal = (double)(dx3);
				CD30(j3,k3).dimag = (double)(dy3);
LBL_80:
				;
			}
			DA20(j3) = DB30(j3,10) - DA10(i);
LBL_70:
			;
		}
LBL_40:
		;
	}
	printf("  ****  *** NO.2 **** \n");
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
	printf(" (DA40) \n");
	for(i=1; i<=20; i++)
	{
		printf(" %g ",DA40(i));
	}
	printf("\n");
	printf(" (CD20) \n");
	for(i=1; i<=20; i++)
	{
		printf(" (%g,%g) ",CD20(i).dreal,CD20(i).dimag);
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=10; j>=1; j--)
	{
		for(i=20; i>=11; i--)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD30) \n");
	for(j=10; j>=1; j--)
	{
		for(i=20; i>=11; i--)
		{
			printf(" (%g,%g) ",CD30(i,j).dreal,CD30(i,j).dimag);
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=20; j>=11; j--)
	{
		printf(" %g ",DB10(10,j));
	}
	printf("\n");
	printf(" (CD40) \n");
	for(k=1; k<=10; k++)
	{
		for(j=1; j<=20; j++)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CD40(i,j,k).dreal,CD40(i,j,k).dimag);
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DC10) \n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=19; i+=2)
		{
			printf(" %g ",DC10(i,j,1));
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}
