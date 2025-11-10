#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define DA40(i) da40[i-1]
#define ID10(i) id10[i-1]
#define ID20(i) id20[i-1]
#define ID30(i) id30[i-1]
#define ID40(i) id40[i-1]
#define LD10(i) ld10[i-1]
#define LD20(i) ld20[i-1]
#define LD30(i) ld30[i-1]
#define LD40(i) ld40[i-1]
#define LB10(i) lb10[i-1]
long int id10[20],id20[20],id30[20],id40[20];
double da10[20],da20[20],da30[20],da40[20];
unsigned long int ld10[20],ld20[20],ld30[20],ld40[20],lb10[32];
int main()
{
	long int i,k,j,n=0;
	double DVAL,DX,DY,DX1,DY1;

	union uda{
		long int id40[20];
		unsigned long int lb10[32];
	}uar;

	for(i=1;i<=20;i++){
		DA10(i)=1;
	}

	for(i=1;i<=20;i++){
		DA20(i)=2;
	}

	for(i=1;i<=20;i++){
		DA30(i)=2;
	}

	for(i=1;i<=20;i++){
		DA40(i)=4;
	}

	for(i=1;i<=20;i++){
		ID10(i)=1;
	}

	for(i=1;i<=20;i++){
		ID20(i)=1;

		for(i=1;i<=20;i++){
			ID30(i)=2;
		}

		for(i=1;i<=20;i++){
			LD10(i)=LD20(i)=LD30(i)=LD40(i)=0;
		}

		for(i=1;i<=20;i++){
			uar.ID40(i)=2;
		}

		for(i=1;i<=32;i++){
			uar.LB10(i)=0;
		}

		for(i=2;i<=20;i+=2)
		{
			LD20(i)=1;
			LD40(i-1)=1;
		}
		DVAL=0.0;
		for(i=10;i<=11;i++)
		{
			for(j=1;j<=20;j++)
			{
				DA10(j)=DA10(j)-DA20(i);
				DA30(j)=DA30(j)+DA40(i);
				DX=(double)(int)(0.5+DA30(j)/5+DA10(j));
				DY=(double)(int)(0.5+sqrt(fabs(DA30(j))));
				if ( DVAL  >   10.0 )
				{
					if ( LD20(j) ==1)
					{
						DA10(j)=pow(2.0,DX)-DA20(j);
						LD10(j)=LD10(j)||LD30(j);
					}
					else
					{
						DA30(j)=DA40(j)+DY;
						LD30(j)=(!LD30(j))&&(!LD40(j));
					}
				}
				else {
					if ( DX >DY )
					{
						LD30(j)=!LD10(j);
					}
					else
					{
						LD10(j)=!LD20(j);
					}
				}
				DA20(i)=DA20(i)+DA10(j);
				DA40(i)=DA40(i)-DA30(j);
			}
			DVAL=DVAL+(DA40(i)-DA20(i));
		}
		printf("  ****  *** NO.1 **** \n");

		for(i=1;i<=20;i++){
			printf("  (DA10(%ld))  %g ",i,DA10(i));
			n=i%2;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (DA30(%ld))  %g ",i,DA30(i));
			n=i%2;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (LD10(%ld))  %lu ",i,LD10(i));
			n=i%5;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (LD30(%ld))  %lu ",i,LD30(i));
			n=i%5;
			if( n == 0 )  printf("\n");
		}
		for(k=1;k<=10;k++)
		{
			uar.ID40(k)=ID10(k)+ID20(k);
			ID10(k)=k;
			ID20(k)=k*2;
			ID30(k)=k+10;
			for(j=10;j<=20;j+=10)
			{
				for(i=1;i<=20;i++)
				{
					ID30(i)=ID30(i)-ID10(i);
					DA20(i)=DA20(i)+DA10(i)-(double)(ID10(i));
					ID20(i)=ID20(i)-i;
					if ( LD10(i)  ||   LD20(i) ==1)
					{
						DX1=DA10(i)*DA30(i);
						DY1=(DA20(i) > DA40(i)) ? DA20(i):DA40(i);
						if ( LD30(i)  ||   LD40(i) ==1)
						{
							ID10(i)=(int)(0.5+DA20(i))+i;
							DA40(i)=DA40(i)+DX1;
						}
						else
						{
							ID10(i)=(int)(0.5+DA30(i))-i;
							DA20(i)=DA20(i)+DY1;
						}
					}
				}
			}
			if ( k  <   5 )
			{
				uar.LB10(k)=1;
			}
		}
		printf("  ***  ** NO.2 *** \n");

		for(i=1;i<=20;i++){
			printf("  (ID10(%ld))  %ld ",i,ID10(i));
			n=i%3;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (ID20(%ld))  %ld ",i,ID20(i));
			n=i%3;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (ID30(%ld))  %ld ",i,ID30(i));
			n=i%3;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (ID40(%ld))  %ld ",i,(uar.ID40(i)));
			n=i%3;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (DA20(%ld))  %g ",i,DA20(i));
			n=i%4;
			if( n == 0 )  printf("\n");
		}

		for(i=1;i<=20;i++){
			printf("  (DA40(%ld))  %g ",i,DA40(i));
			n=i%4;
			if( n == 0 )  printf("\n");
		}
	}

	exit(0);
}
