#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DC10(i,j,k) dc10[i-1][j-1][k-1]
#define DC20(i,j,k) dc20[i-1][j-1][k-1]
#define DC30(i,j,k) dc30[i-1][j-1][k-1]
#define CD10(i) cd10[i-1]
#define CD20(i) cd20[i-1]
#define CD30(i,j) cd30[i-1][j-1]
#define CD40(i,j) cd40[i-1][j-1]
#define CD50(i,j,k) cd50[i-1][j-1][k-1]
double da10[30],da20[30],db10[20][20],db20[20][20],db30[20][20],
dc10[20][20][20],dc20[20][20][20],dc30[20][20][20];
COMPLEX16 cd10[30],cd20[30],cd30[20][20],cd40[20][20],cd50[20][20][20];
int main()
{
	long int IND,n,i,j,k,N1;
	short int m;
	double DVAL1,dx1,dy1,dx2,dy2;
	COMPLEX16 CDX,CDY;

	for(i=0; i<30; i++)
	{
		da10[i] = 1.0;
	}
	for(i=0; i<30; i++)
	{
		da20[i] = 2.0;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			db10[i][j] = 3.0;
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
			db30[i][j] = 5.0;
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
				dc20[i][j][k] = 4.0;
			}
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				dc30[i][j][k] = 6.0;
			}
		}
	}
	for(i=0; i<30; i++)
	{
		cd10[i].dreal = 1;
		cd10[i].dimag = 2;
	}
	for(i=0; i<30; i++)
	{
		cd20[i].dreal = 4;
		cd20[i].dimag = 2;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cd30[i][j].dreal = 2;
			cd30[i][j].dimag = 1;
		}
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cd40[i][j].dreal = 5;
			cd40[i][j].dimag = 3;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				cd50[i][j][k].dreal = 6;
				cd50[i][j][k].dimag = 3;
			}
		}
	}
	IND = 1;
	for(i=11; i<=20; i++)
	{
		DVAL1 = DA10(i) + DA20(i);
		dx1 = CD10(IND).dreal + CD20(IND).dreal;
		dy1 = CD20(IND).dimag;
		n = i + 10;
		DA10(n) = DA20(n) + dy1;
		for(j=i; j>=2; j-=1)
		{
			DB10(i,j) = DB20(i,j) + DB30(j,i) + 2.0;
			dx2 = ((sqrt(DB10(i,j))) > 0.0)
			    ? (double)(int)((sqrt(DB10(i,j))) + 0.5)
			    : (double)(int)((sqrt(DB10(i,j))) - 0.5);
			dy2 = 0.0;
			if(DB10(i,j) > 10.0)
			{
				dy2 = DB10(i,j);
			}
			CD30(i,j).dreal = (double)(dx2);
			CD30(i,j).dimag = (double)(dy2);
			for(k=1; k<=10; k+=2)
			{
				DC10(i,j,k) = DC20(i,j,k+1) + DC30(i,j,k*2);
				DC20(i,j,k) = DC10(i-1,j,k+1) * DC30(i,j,k*2-1);
				DC30(i,j,k) = ((DC20(i,j-1,k) / DC10(i,j,k+1)) > 0.0)
				    ? (double)(int)((DC20(i,j-1,k) / DC10(i,j,k+1))
				    + 0.5)
				    : (double)(int)((DC20(i,j-1,k) / DC10(i,j,k+1))
				    - 0.5);
			}
LBL_20:
			;
		}
		CD10(IND).dreal = (double)(dx1);
		CD10(IND).dimag = (double)(dy1);
		DA20(n) = fabs(DA10(i) - DA20(i)) + DVAL1;
		IND = IND + 1;
LBL_10:
		;
	}
	printf("  ****  *** NO.1 **** \n");
	printf(" (DA10) \n");
	for(k=11; k<=20; k++)
	{
		printf(" %g ",DA10(k));
	}
	printf("\n");
	printf(" (DA20) \n");
	for(k=11; k<=20; k++)
	{
		printf(" %g ",DA20(k));
	}
	printf("\n");
	printf(" (CD10) \n");
	for(k=1; k<=10; k++)
	{
		printf(" (%g,%g) ",CD10(k).dreal,CD10(k).dimag);
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=2; j<=20; j++)
	{
		for(i=11; i<=20; i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD30) \n");
	for(j=2; j<=20; j++)
	{
		for(i=11; i<=20; i++)
		{
			printf(" (%g,%g) ",CD30(i,j).dreal,CD30(i,j).dimag);
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC10) \n");
	for(k=1; k<=10; k+=2)
	{
		for(j=2; j<=20; j++)
		{
			for(i=11; i<=20; i++)
			{
				printf(" %g ",DC10(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DC20) \n");
	for(k=1; k<=10; k+=2)
	{
		for(j=2; j<=20; j++)
		{
			for(i=11; i<=20; i++)
			{
				printf(" %g ",DC20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DC30) \n");
	m = 0;
	for(k=1; k<=10; k+=2)
	{
		for(j=2; j<=20; j++)
		{
			for(i=11; i<=20; i++)
			{
				printf(" %g ",DC30(i,j,k));
				m++;
				if(m == 25)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	N1 = 2;
	for(i=2; i<=15; i++)
	{
		CDX.dreal = sqrt(CD10(i).dreal) + CD20(i).dreal;
		CDX.dimag = sqrt(CD10(i).dimag) + CD20(i).dimag;
		CDY.dreal = CDX.dreal;
		CDY.dimag = -CDX.dimag;
		dx1 = (CDY.dreal > 0.0) ? (double)(int)(CDY.dreal + 0.5)
		    : (double)(int)(CDY.dreal - 0.5);
		dy1 = (CDY.dimag > 0.0) ? (double)(int)(CDY.dimag + 0.5)
		    : (double)(int)(CDY.dimag - 0.5);
		CD20(i).dreal = (double)(dx1);
		CD20(i).dimag = (double)(dy1);
		for(j=20; j>=11; j-=1)
		{
			for(k=10; k>=1; k-=2)
			{
				DB20(j,k) = DB10(i,k) + dx1;
				DB30(j,k) = DB10(j,k) + CD40(i,k).dimag;
				DB10(k,j) = ((DB20(k,j) > DB30(k,j))
				    ? DB20(k,j) : DB30(k,j)) - dy1;
				dx2 = DB10(k+1,j);
				dy2 = DB10(k,j);
				CD40(i,k).dreal = (double)(dx2);
				CD40(i,k).dimag = (double)(dy2);
				CD50(i,j,k).dreal = (double)(dy2);
				CD50(i,j,k).dimag = (double)(dx2);
LBL_45:
				;
			}
			DC10(i,j,j) = DC20(i,i,j) - DC30(i,j,i);
			DC30(i,i,j) = DC10(j,j,i) - DC20(i,i,j);
LBL_40:
			;
		}
		n = i - 1;
		DA10(n) = DA10(i) + DC10(i,20,20);
		DA20(n) = DA20(i+N1) + DC30(i,1,1);
LBL_30:
		;
	}
	printf("  ****  *** NO.2 **** \n");
	printf(" (DA10) \n");
	for(k=1; k<=15; k++)
	{
		printf(" %g ",DA10(k));
	}
	printf("\n");
	printf(" (DA20) \n");
	for(k=1; k<=15; k++)
	{
		printf(" %g ",DA20(k));
	}
	printf("\n");
	printf(" (CD20) \n");
	for(k=1; k<=15; k++)
	{
		printf(" (%g,%g) ",CD20(k).dreal,CD20(k).dimag);
		if(k == 8)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=10; j>=1; j-=2)
	{
		for(i=20; i>=11; i--)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=10; j>=1; j-=2)
	{
		for(i=20; i>=11; i--)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=20; j>=11; j--)
	{
		for(i=10; i>=1; i-=2)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD40) \n");
	for(j=10; j>=1; j--)
	{
		for(i=20; i>=11; i--)
		{
			printf(" (%g,%g) ",CD40(i,j).dreal,CD40(i,j).dimag);
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD50) \n");
	m = 0;
	for(k=10; k>=1; k--)
	{
		for(j=20; j>=11; j--)
		{
			for(i=1; i<=15; i++)
			{
				printf(" (%g,%g) ",CD50(i,j,k).dreal,CD50(i,j,k).dimag);
				m++;
				if(m == 10)
				{
					printf("\n");
					m = 0;
				}
			}
		}
	}
	printf("\n");
	printf(" (DC10) \n");
	for(j=20; j>=11; j--)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DC10(i,j,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC30) \n");
	for(j=20; j>=11; j--)
	{
		for(i=1; i<=15; i++)
		{
			printf(" %g ",DC30(i,j,j));
		}
		printf("\n");
	}
	printf("\n");
	exit (0);
}
