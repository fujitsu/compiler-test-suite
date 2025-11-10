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
#define DD10(i,j,k,l,m) dd10[i-1][j-1][k-1][l-1][m-1]
#define DD20(i,j,k,l,m) dd20[i-1][j-1][k-1][l-1][m-1]
#define LD10(i) ld10[i-1]
#define LD20(i,j) ld20[i-1][j-1]
#define LD30(i,j,k) ld30[i-1][j-1][k-1]
double da10[40],da20[40],da30[40],da40[40],db10[40][40],db20[40][40],
db30[40][40],dc10[20][20][20],dc20[20][20][20],dc30[20][20][20],
dd10[8][8][8][8][8],dd20[8][8][8][8][8];
unsigned long int ld10[40],ld20[40][40],ld30[20][20][20];
int main()
{
	long int IT1=1;
	long int IT2=2;
	long int IT3=3;
	long int IT4=4;
	long int IT5=10;
	long int i,j,k,I,J,K,L,M,K1,K2,K3,I1,I2,I3,I4,I5,N1,N2,N3,ICNT,INV;
	float    m;

	for(i=0 ; i<40 ; i++)
	{
		da10[i] = 1.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		da20[i] = 2.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		da30[i] = 3.0;
	}
	for(i=0 ; i<40 ; i++)
	{
		da40[i] = 4.0;
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			db10[i][j] = 5.0;
		}
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			db20[i][j] = 4.0;
		}
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			db30[i][j] = 2.5;
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				dc10[i][j][k] = 2.0;
			}
		}
	}
	I = 0;
	m = 4.0;
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				dc20[i][j][k] = m;
				I = I+1;
				if ( I>=5000 )  m = 10.0;
			}
		}
	}
	I = 0;
	m = 0;
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				dc30[i][j][k] = 4.0;
			}
		}
	}
	for(i=0 ; i<40 ; i++)
	{
		ld10[i] = 0;
	}
	for(j=0 ; j<40 ; j++)
	{
		for(i=0 ; i<40 ; i++)
		{
			ld20[i][j] = 0;
		}
	}
	for(k=0 ; k<20 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0 ; i<20 ; i++)
			{
				ld30[i][j][k] = 0;
			}
		}
	}

	for(I=IT1 ; I<=IT4*4 ; I++)
	{
		DA10(I*2+1) = DA20(I+IT4) * DA30(I+IT5);
		DA10(I*2+8) = DA40(I) - DA20(I);
		for(J=1 ; J<=IT4*2 ; J++)
		{
			DB10(I,J*2)   = DB20(I,J*2+1) + DB30(I*2,J*2);
			DB10(I,J*2+1) = DB20(I,J*2) + DB30(I*2,J*2);
			for(K1=1 ; K1<=IT5 ; K1++)
			{
				DC10(I,J,K1)    = DC20(I,J,K1) + DC30(I,J,K1+1);
				DC20(I,J,K1+10) = DC10(I,J,K1+1) * DC30(I,J,K1);
				if ( I<=8  &&  J<=8  &&  K1<=8)
				{
					for(K2=1 ; K2<=8 ; K2++)
					{
						for(K3=1 ; K3<=8 ; K3++)
						{
							DD10(I,J,K1,K2,K3) = DB30(K2,K3);
							DD20(I,J,K1,K2,K3) = DC30(K1,K2,K3);
						}
					}
				}
			}
			DB20(I+20,J*2) = DB10(I+1,J*2+5) / DB30(I,J);
		}
		DA20(I)       = DA10(I*2) + DA30(I+1);
		DA40(I+IT4*4) = DA20(I+1) + DA30(I);
	}

	printf("  ****  *** NO.1 **** \n");
	printf("  ** DA10 ** DA20 ** DA40 ** \n");
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");

	for(i=21 ; i<=40 ; i++)
	{
		printf(" %g ",DA10(i));
	}
	printf("\n");

	for(K=1 ; K<=20 ; K++)
	{
		printf(" %g ",DA20(K));
	}
	printf("\n");

	for(K=21 ; K<=40 ; K++)
	{
		printf(" %g ",DA40(K));
	}
	printf("\n");

	printf("  ** DB10 ** DB20 ** \n");
	for(J=2 ; J<=40 ; J++)
	{
		for(I=1 ; I<=20 ; I++)
		{
			printf(" %g ",DB10(I,J));
			if(I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=2 ; J<=40 ; J+=2)
	{
		for(I=21 ; I<=40 ; I++)
		{
			printf(" %g ",DB20(I,J));
			if(I==40)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	printf("  ** DC10 ** DC20 ** \n");
	for(K=1 ; K<=20 ; K++)
	{
		for(J=1 ; J<=20 ; J++)
		{
			for(I=1 ; I<=20 ; I++)
			{
				printf(" %g ",DC10(I,J,K));
				if(I==20)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n");

	for(K=1 ; K<=20 ; K++)
	{
		for(J=1 ; J<=20 ; J++)
		{
			for(I=1 ; I<=20 ; I++)
			{
				printf(" %g ",DC20(I,J,K));
				if(I==20)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n");

	printf("  ** DD10 ** DD20 ** \n");
	I = 0;
	for(I5=2 ; I5<=3 ; I5++)
	{
		for(I4=4 ; I4<=5 ; I4++)
		{
			for(I3=3 ; I3<=4 ; I3++)
			{
				for(I2=2 ; I2<=3 ; I2++)
				{
					for(I1=1 ; I1<=2 ; I1++)
					{
						printf(" %g ",DD10(I1,I2,I3,I4,I5));
						I = I+1;
						if(I==16)
						{
							printf("\n");
							I = 0;    
						}
					}
				}
			}
		}
	}
	printf("\n");

	for(K3=6 ; K3<=7 ; K3++)
	{
		for(K2=4 ; K2<=5 ; K2++)
		{
			for(K1=3 ; K1<=4 ; K1++)
			{
				printf(" %g ",DD20(1,2,K1,K2,K3));
			}
		}
	}
	printf("\n");

	for(I1=1 ; I1<=40 ; I1++)
	{
		if (DA10(I1) == 1.0)
		{
			LD10(I1) = 1;
		}
		for(I2=1 ; I2<=20 ; I2++)
		{
			if (DB10(I1,I2) == 5.0)
			{
				LD20(I1,I2) = 1;
			}
			for(I3=1 ; I3<=10 ; I3++)
			{
				if (I1 >  10 )  goto LBL_40 ;
				if ( DC10(I1,I2,I3)  >=  10.0 )
				{
					LD30(I1,I2,I3) = 1;
				}
LBL_40:
				;
			}
		}
	}

	N1 = 0;
	N2 = 0;
	N3 = 0;

	for(I=1 ; I<=40 ; I++)
	{
		if ( LD10(I) ==1)
		{
			N1 = N1+1;
		}
		for(J=1 ; J<=40 ; J++)
		{
			if ( LD20(I,J) ==1)
			{
				N2 = N2+1;
			}
			for(K=1 ; K<=10 ; K++)
			{
				if ( I <= 10  &&  J<=10  &&  LD30(I,J,K))
				{
					N3 = N3+1;
				}
			}
		}
	}

	for(I=1 ; I<=40 ; I++)
	{
		if ( LD10(I) ==1)
		{
			ICNT = I;
			goto LBL_55;
		}
	}

LBL_55:
	;
	printf("  ****  *** NO.2 *** \n");
	printf("   N1 = %ld  N2 = %ld  N3 = %ld  \n",N1,N2,N3);
	printf("   ICNT =  %ld \n",ICNT);

	for(I=IT3 ; I<=IT3*10 ; I+=IT2)
	{
		DA30(I+IT5) = DA10(I+IT2) / 2.0 * DA20(I+IT3*2);
		DA40(I+1)   = DA30(I+9) - DA10(I+IT2*2) + DA20(I+IT3);
		DA10(I)     = DA20(I+IT2+IT3) * DA40(I-IT2);
		DA20(1)     = DA20(1) + DA30(I) + DA40(I);
	}

	printf("  ****  *** NO.3 *** \n");
	for(K=23 ; K<=40 ; K++)
	{
		printf(" %g ",DA30(K));
	}
	printf("\n");

	for(K=4 ; K<=17 ; K++)
	{
		printf(" %g ",DA40(K));
	}
	printf("\n");

	for(K=18 ; K<=31 ; K++)
	{
		printf(" %g ",DA40(K));
	}
	printf("\n");

	for(K=3 ; K<=16 ; K++)
	{
		printf(" %g ",DA10(K));
	}
	printf("\n");
	for(K=17 ; K<=30 ; K++)
	{
		printf(" %g ",DA10(K));
	}
	printf("\n");
	printf("  ** DA20(1) = ,DA20(1), ** \n");

	ICNT = 0;
	INV  = 1;
	for(I=18 ; I>=3 ; I-=1)
	{
		DB20(I,I+2)   = DB30(I,INV) + DB10(INV,I+2);
		DB30(I,INV+1) = DB20(I-1,I+1) * DB10(INV+1,2*I-1);
		DB10(INV,I)   = DB20(2*I,I) - DB30(I*2,INV) + DB10(INV,I);
		INV           = INV + 1;
	}

	printf("  ****  *** NO.4 **** \n");
	for(J=23 ; J>=3 ; J--)
	{
		for(I=1 ; I<=20 ; I++)
		{
			printf(" %g ",DB10(I,J));
			if(I==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=5 ; J<=25 ; J++)
	{
		for(I=3 ; I<=23 ; I++)
		{
			printf(" %g ",DB20(I,J));
			if(I==23)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(J=2 ; J<=22 ; J++)
	{
		for(I=23 ; I>=3 ; I--)
		{
			printf(" %g ",DB30(I,J));
			if(I==3)
			{
				printf("\n");
			}
		}
	}
	printf("\n");

	for(I1=2 ; I1<=13 ; I1++)
	{
		for(I2=IT2 ; I2<=10 ; I2++)
		{
			for(I3=IT2 ; I3<=IT5/2 ; I3++)
			{
				DC10(I1,I2,I3+IT5) = DC20(I1,I2,I3*2+1) + DC30(I1,I2,I3+IT2);
				DC20(I1,I2,I3)     = DC10(I1,I2,I3+IT2) - DC30(I1,I2*2,I3*2);
				DC30(I1,I2,I3)     = DC10(I1,I2-1,I3-1) + DC20(I1,I2,I3+1);
				for(K1=1 ; K1<=10 ; K1++)
				{
					if ( I1<=5 && I2<=5 && I3<=7 && K1<=6 )
					{
						for(K2=5 ; K2>=1 ; K2-=1)
						{
							DD10(I1,I2,I3,K1+IT2,K2)
							    = DD10(I1,I2,I3,K1+IT2,K2+IT3)+DD20(I1,I2,I3,K1,K2);
						}
					}
				}
			}
		}
	}

	printf("  ****  *** NO.5 *** \n");
	for(K=12 ; K<=20 ; K++)
	{
		for(J=2 ; J<=13 ; J++)
		{
			for(I=2 ; I<=13 ; I++)
			{
				printf(" %g ",DC10(I,J,K));
				if(I==13)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n");

	for(K=2 ; K<=10 ; K++)
	{
		for(J=2 ; J<=13 ; J++)
		{
			for(I=2 ; I<=13 ; I++)
			{
				printf(" %g ",DC20(I,J,K));
				if(I==13)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n");

	for(K=2 ; K<=10 ; K++)
	{
		for(J=2 ; J<=13 ; J++)
		{
			for(I=2 ; I<=13 ; I++)
			{
				printf(" %g ",DC30(I,J,K));
				if(I==13)
				{
					printf("\n");
				}
			}
		}
	}
	printf("\n");

	for (M=3 ; M<=4 ; M++)
	{
		for (L=3 ; L<=4 ; L++)
		{
			printf("\n");
			for (K=3 ; K<=5 ; K++)
			{
				for (J=4 ; J<=6 ; J++)
				{
					for (I=2 ; I<=3 ; I++)
					{
						printf(" %g",DD10(I,J,K,L,M));
					}
				}
			}
		}
	}
	printf("\n");

	exit (0);
}
