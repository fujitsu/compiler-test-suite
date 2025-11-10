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
#define LD10(i,j) ld10[i-1][j-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j) ld30[i-1][j-1]
#define IL10(i) il10[i-1]
#define IL20(i) il20[i-1]
long int il10[10],il20[10];
double da10[10][10],da20[10][10],da30[10][10],da40[10][10];
COMPLEX16 cd10[10][10],cd20[10][10],cd30[10][10];
unsigned long int ld10[10][10],ld20[10][10],ld30[10][10];
int main()
{
	long int i,j,ICNT,n=0;
	double DVAL,DX,DY,DZ;

	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			da10[i][j]=1.0;
			da20[i][j]=2.0;
			da30[i][j]=3.0;
			da40[i][j]=4.0;
		}
	}

	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			cd10[i][j].dreal=1.0;
			cd10[i][j].dimag=2.0;
			cd20[i][j].dreal=4.0;
			cd20[i][j].dimag=2.0;
			cd30[i][j].dreal=2.0;
			cd30[i][j].dimag=3.0;
		}
	}

	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			ld10[i][j]=ld20[i][j]=ld30[i][j]=0;
		}
	}

	for(i=1;i<=10;i++)
	{
		IL10(i)=i;
		IL20(i)=11-i;
		for(j=2;j<=10;j+=2)
		{
			LD10(j,i)=1;
			LD30(j-1,i)=1;
		}
	}
	DVAL=0.0;
	ICNT=0;
	for(i=2;i<11;i+=2)
	{
		for(j=2;j<11;j++)
		{
			DA10(i,j)=DA10(i,j)+pow(2.0,DA20(i,j));
			DA30(i,j)=DA30(i,j)+(double)(int)(0.5+DA40(i-1,j)/DA20(i,j-1));
			DX=DA10(i,j)+DA30(i,j);
			DY=(double)(int)(0.5+sqrt(DX));
			if ( LD10(j,i) ==1)
			{
				DZ=DA20(i,IL10(j))*2.0 +DA40(i,IL20(j));
				if ( DX  >   DZ )
				{
					LD10(i,j)=1;
					DA40(i,IL20(j))=DX-DZ;
				}
				else
				{
					if ( DY > DZ )
					{
						if ( LD10(i,j)  ||   LD30(i,j) )
						{
							LD20(i,j)=1;
							DA20(i,j)=DY-DZ;
						}
					}
				}
			}
			else
			{
				if ( DVAL  <=  DA10(i,j) )
				{
					DVAL=DA10(i,j);
					LD30(j,i)=!LD10(i,j);
				}
				CD10(i,j).dreal=(double)(DX);
				CD10(i,j).dimag=(double)(DY);
				CD20(i,j).dreal=CD20(i,j).dreal-(double)(DY);
				CD20(i,j).dimag=CD20(i,j).dimag-(double)(DX);
				DZ=(double)(CD30(i,j).dreal)-DX+(double)(CD30(i,j).dimag)+DY;
				if ( DZ  <   0.0 )
				{
					DZ=fabs(DZ);
					CD30(j,i).dreal=(double)(DZ);
					CD30(j,i).dimag=(double)(DX);
				}
				else
				{
					CD30(i,j).dreal=(double)(DY);
					CD30(i,j).dimag=(double)(DZ);
				}
			}
			if ( LD10(i,j)  &&   LD30(j,i)   ||   LD20(i,j) )
			{
				ICNT=ICNT+1;
				LD20(i,j)=!LD10(j,i)&&!LD30(i,j);
			}
		}
		printf("  ***  ** NO.1 **  %ld  ",i);
		printf("  DVAL =  %g \n",DVAL);
		printf("  ICNT =  %ld \n",ICNT);
		DVAL=0.0;
		ICNT=0;
	}
	printf("  ***  ** NO.2 *** \n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (DA10(%ld,%ld))  %g ",i,j,DA10(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (CD10(%ld,%ld)) (%g,%g) ",i,j,CD10(i,j).dreal,CD10(i,j).dimag);
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (LD10(%ld,%ld))  %lu ",i,j,LD10(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (DA20(%ld,%ld))  %g ",i,j,DA20(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (CD20(%ld,%ld)) (%g,%g) ",i,j,CD20(i,j).dreal,CD20(i,j).dimag);
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (LD20(%ld,%ld))  %lu",i,j,LD20(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (DA30(%ld,%ld))  %g ",i,j,DA30(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (CD30(%ld,%ld)) (%g,%g) ",i,j,CD30(i,j).dreal,CD30(i,j).dimag);
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (LD30(%ld,%ld))  %lu",i,j,LD30(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
	printf("\n");

	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" (DA40(%ld,%ld))  %g ",i,j,DA40(i,j));
			n=i%3;
			if( n == 0 ) printf("\n");
		}
	}
        printf("\n");
	exit (0);
}
