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
#define CD20(i,j) cd20[i-1][j-1]
#define CD30(i,j,k) cd30[i-1][j-1][k-1]
double da10[20],da20[20],da30[20],da40[20],db10[20][20],db20[20][20],
db30[20][20],dc10[20][20][20],dc20[20][20][20],dc30[20][20][20];
COMPLEX16 cd10[20],cd20[20][20],cd30[20][20][20];
int main()
{
	long int i,j,k,n,IT1,IT2;
	short int m;
	double dx,dy,dx1,dy1;

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
			db20[i][j] = 3.0;
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
				dc10[i][j][k] = 3.0;
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
	for(i=0; i<20; i++)
	{
		cd10[i].dreal = 2;
		cd10[i].dimag = 1;
	}
	for(j=0; j<20; j++)
	{
		for(i=0; i<20; i++)
		{
			cd20[i][j].dreal = 2;
			cd20[i][j].dimag = 3;
		}
	}
	for(k=0; k<20; k++)
	{
		for(j=0; j<20; j++)
		{
			for(i=0; i<20; i++)
			{
				cd30[i][j][k].dreal = 3;
				cd30[i][j][k].dimag = 5;
			}
		}
	}
	for(i=1; i<=10; i++)
	{
		DA10(i) = DA20(i+1) + DA30(i);
		DA40(i) = DA20(i+10) + DB10(i,20);
		for(j=11; j<=20; j++)
		{
			DB10(i,j) = DB20(j,i+1) * DB30(j,i);
			DB30(i,j) = DB20(j,i+1) * DC10(j,i,10);
			for(k=j; k>=10; k--)
			{
LBL_30:
				;
				DC10(k,i,10) = DC20(i,j,k) + DB30(i,k);
			}
			DB20(j,i) = (DB10(i,j) < DB30(i,j)) ? DB10(i,j) : DB30(i,j);
LBL_20:
			;
		}
		DA20(i) = DA40(i+1) - DA10(i);
LBL_10:
		;
	}
	printf("  ***  *** NO.1 *** \n");
	printf(" (DA10) \n");
	for(k=1; k<=10; k++)
	{
		printf(" %g ",DA10(k));
	}
	printf("\n");
	printf(" (DA20) \n");
	for(k=1; k<=10; k++)
	{
		printf(" %g ",DA20(k));
	}
	printf("\n");
	printf(" (DA40) \n");
	for(k=1; k<=10; k++)
	{
		printf(" %g ",DA40(k));
	}
	printf("\n");
	printf(" (DB10) \n");
	for(j=11; j<=20; j++)
	{
		for(i=1; i<=10; i++)
		{
			printf(" %g ",DB10(i,j));
		}
		printf("\n");
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
	printf(" (DB20) \n");
	for(j=1; j<=10; j++)
	{
		for(i=11; i<=20; i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DC10) \n");
	for(j=1; j<=10; j++)
	{
		for(i=20; i>=10; i--)
		{
			printf(" %g ",DC10(i,j,10));
		}
		printf("\n");
	}
	printf("\n");
	for(i=1; i<=10; i++)
	{
		n = i + 10;
		dx = (sqrt(DA10(i)) > 0.0) ? (double)(int)(sqrt(DA10(i)) + 0.5)
		    : (double)(int)(sqrt(DA10(i)) - 0.5);
		dy = ((DA20(i)*2.0/DA40(n)) > 0.0)
		    ? (double)(int)(DA20(i)*2.0/DA40(n)+0.5)
		    : (double)(int)(DA20(i)*2.0/DA40(n)-0.5);
		CD10(i).dreal = (double)(dx);
		CD10(i).dimag = (double)(dy);
		CD20(n,i).dreal = (double)(dy);
		CD20(n,i).dimag = (double)(dx);
		for(j=n; j>=10; j-=1)
		{
			if(DB10(i,j) > DB30(i,j) )
			{
				DB20(n,j) = DB10(i,j);
			}
			else
			{
				DB20(i,j) = DB30(i,j);
			}
			for(k=20; k>=2; k-=2)
			{
				DC20(i,j,k) = DC10(i,j,k) + DC30(n,j,k);
				DC30(i,j,k) = DC10(i,j,k) * 2.0;
				dx1 = (DC20(i,j,k) > DC30(i,j,k))
				    ? DC20(i,j,k) : DC30(i,j,k);
				dy1 = (DC20(i,j,k-1) > DC30(i,j,k-1))
				    ? DC20(i,j,k-1) : DC30(i,j,k-1);
				CD30(i,j,k).dreal = (double)(dx1);
				CD30(i,j,k).dimag = (double)(dy1);
LBL_60:
				;
			}
			DB30(n,j) = DC10(i,j,20) - DB20(n,j);
LBL_50:
			;
		}
		dx = DA30(i);
		dy = DA30(n);
		CD20(i,i).dreal = (double)(dx) + CD10(n).dreal;
		CD20(i,i).dimag = (double)(dy) + CD10(n).dimag;
LBL_40:
		;
	}
	printf("  ***  ** NO.2 *** \n");
	printf(" (CD10) \n");
	for(i=1; i<=20; i++)
	{
		printf(" (%g,%g) ",CD10(i).dreal,CD10(i).dimag);
	}
	printf("\n");
	printf(" (DB20) \n");
	for(j=20; j>=10; j--)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DB20(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=20; j>=10; j--)
	{
		for(i=11; i<=20; i++)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD20) \n");
	for(k=1; k<=10; k++)
	{
		printf(" (%g,%g) ",CD20(k,k).dreal,CD20(k,k).dimag);
		if(k == 5)
		{
			printf("\n");
		}
	}
	printf("\n");
	printf(" (DC20) \n");
	m = 0;
	for(k=1; k<=20; k++)
	{
		for(j=20; j>=10; j--)
		{
			for(i=1; i<=10; i++)
			{
				printf(" %g ",DC20(i,j,k));
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
	printf(" (DC30) \n");
	m = 0;
	for(k=1; k<=20; k++)
	{
		for(j=20; j>=10; j--)
		{
			for(i=1; i<=10; i++)
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
	printf(" (CD30) \n");
	for(k=1; k<=20; k++)
	{
		for(j=20; j>=10; j--)
		{
			for(i=1; i<=10; i++)
			{
				printf(" (%g,%g) ",CD30(i,j,k).dreal,CD30(i,j,k).dimag);
			}
			printf("\n");
		}
	}
	printf("\n");
	IT1 = 1;
	IT2 = 2;
	for(i=1; i<=20; i++)
	{
		DA30(i) = ((DA20(i) < DA40(i)) ? DA20(i) : DA40(i)) * DA10(i);
		DB20(i,15) = DA30(i) - DC20(i,15,10);
		for(j=5; j<=15; j++)
		{
			DB30(i,j) = DB10(i,j) - DB20(i,j);
			for(k=2; k<=10; k++)
			{
LBL_90:
				;
				DC20(i,j,k) = DC10(i,j,k) + DA10(k);
			}
			CD20(i,j).dreal = CD30(i,j,j).dreal + CD10(j).dreal;
			CD20(i,j).dimag = CD30(i,j,j).dimag + CD10(j).dimag;
LBL_80:
			;
		}
		DA40(i) = DB30(i,5) - CD10(i).dimag;
LBL_70:
		;
	}
	printf("  ****  *** NO.3 **** \n");
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
	printf(" (DB20) \n");
	for(k=1; k<=20; k++)
	{
		printf(" %g ",DB20(k,15));
	}
	printf("\n");
	printf(" (DB30) \n");
	for(j=5; j<=15; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" %g ",DB30(i,j));
		}
		printf("\n");
	}
	printf("\n");
	printf(" (CD20) \n");
	m = 0;
	for(j=5; j<=15; j++)
	{
		for(i=1; i<=20; i++)
		{
			printf(" (%g,%g) ",CD20(i,j).dreal,CD20(i,j).dimag);
			m++;
			if(m == 10)
			{
				printf("\n");
				m = 0;
			}
		}
	}
	printf("\n");
	printf(" (DC20) \n");
	for(k=1; k<=20; k++)
	{
		for(j=1; j<=20; j++)
		{
			for(i=1; i<=20; i++)
			{
				printf(" %g ",DC20(i,j,k));
			}
			printf("\n");
		}
	}
	printf("\n");
	exit (0);
}
