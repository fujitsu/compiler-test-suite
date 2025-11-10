#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB1(double dim1[], double dim2[], double dim3[], long int NN);
#define DA10(i) da10[i-1]
#define DA20(i) da20[i-1]
#define DA30(i) da30[i-1]
#define LD10(i) ld10[i-1]
#define DB10(i,j) db10[i-1][j-1]
#define DB20(i,j) db20[i-1][j-1]
#define DB30(i,j) db30[i-1][j-1]
#define DC10(i,j,k) dc10[i-1][j-1][k-1]
#define DC20(i,j,k) dc20[i-1][j-1][k-1]
#define DC30(i,j,k) dc30[i-1][j-1][k-1]
#define ID10(i,j) id10[i-1][j-1]
#define ID20(i,j) id20[i-1][j-1]
#define ID30(i,j) id30[i-1][j-1]
double da10[30],da20[30],da30[30],db10[10][20],db20[10][20],
db30[10][20],dc10[10][20][5],dc20[10][20][5],dc30[10][20][5] ;
unsigned long int ld10[30] ;
long int id10[20][20],id20[20][20],id30[20][20] ;
double DVAL1,DVAL2,DVAL3 ;
int main()
{
	long int ICNT1,ICNT2,i,j,k,I,N,J,K,M,N1,NN,III,NNN ;

	for(i=0  ;  i<30  ;  i++)
	{
		da10[i]=1.0 ;
		da20[i]=2.0 ;
		da30[i]=3.0 ;
	}
	for(j=0 ; j<20 ; j++)
	{
		for(i=0  ;  i<10  ;  i++)
		{
			db10[i][j]=4.0 ;
		}
	}
	for(j=0 ; j<20 ; j++)
	{
		for(i=0  ;  i<10  ;  i++)
		{
			db20[i][j]=5.0 ;
		}
	}
	for(j=0 ; j<20 ; j++)
	{
		for(i=0  ;  i<10  ;  i++)
		{
			db30[i][j]=3.0 ;
		}
	}
	for(k=0 ; k<5 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0  ;  i<10  ;  i++)
			{
				dc10[i][j][k]=1.0 ;
			}
		}
	}
	for(k=0 ; k<5 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0  ;  i<10  ;  i++)
			{
				dc20[i][j][k]=0.5 ;
			}
		}
	}
	for(k=0 ; k<5 ; k++)
	{
		for(j=0 ; j<20 ; j++)
		{
			for(i=0  ;  i<10  ;  i++)
			{
				dc30[i][j][k]=2.0 ;
			}
		}
	}
	for(i=0  ;  i<30  ;  i++)
	{
		ld10[i]=0 ;
	}

	ICNT1=1 ;
	ICNT2=401 ;
	for(I=1  ;  I<=20  ;  I++)
	{
		for(J=1 ; J<=20 ; J++)
		{
			ICNT2    = ICNT2-1 ;
			ID20(I,J)= ICNT2 ;
			ID30(I,J)= ICNT1 ;
			ID10(I,J)= ICNT2-ICNT1 ;
			ICNT1    = ICNT1+1 ;
LBL_5: 
			;
		}
	}

	for(I=2  ;  I<=3  ;  I++)
	{
		N = ID30(1,I)*3 ;
		for(J=2 ; J<=N ; J++)
		{
			DA10(J) = DA20(J-1)+DA30(J);
			for(K=9 ; K>=2 ; K-=1)
			{
				DB10(K,J) = DB20(K-1,J) * DB30(-K+12,-J+20) - DB10(K-1,J);
				for(M=2 ; M<=5 ; M++)
				{
					DC10(K,J,M) = DC10(K,J,M)
					    + DC30(-K+12,-J+22,-M+6);
					DC20(K,J,M) = DC20(K-1,J+1,M)
					    - DC30(-K+11,-J+21,-M+6);
LBL_30: 
					;
					DC30(-K+11,-J+21,-M+6) = DB10(M,1)
					    + DC30(-K+11,-J+21,-M+6);
				}
				DB20(K,J) = DB10(K-1,J-1) - DA10(J+N);
LBL_20: 
				;
			}
			DA20(J+N) = DA10(J-1) - DA20(J);
			DA30(J+N) = DA10(J+N) + DA30(J-1);
LBL_10: 
			;
		}
	}

	for(I=1  ;  I<=5  ;  I++)
	{
		for(J=10 ; J>=1 ; J-=1)
		{
			DB20(I,J)  = DB10(I,J) + DB30(-I+11,-J+21);
			DB30(-J+11,-I+21)= DB10(I,J) - DB20(I,2*J) / 2.0 ;
			DVAL1 = (DB20(I,J)>DB30(-I+11,-J+21)) ?
			    DB20(I,J):DB30(-I+11,-J+21);
			if ( DB10(I,J)  >   DVAL1 )
			{
				DA30(I) = DA30(I)+DVAL1 ;
				N1 = I+5 ;
				DB10(N1,J) = DVAL1 ;
			}
LBL_40: 
			;
		}
	}

	printf("  ***  ** NO.1 ***  \n");
	printf("(DA10)  \n");
	for(K=1 ; K<=20 ; K++)
	{
		printf(" %g ",DA10(K));
		if(K==10)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA20)  \n");
	for(K=11 ; K<=30 ; K++)
	{
		printf(" %g ",DA20(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	printf("(DA30)  \n");
	for(K=11 ; K<=30 ; K++)
	{
		printf(" %g ",DA30(K));
		if(K==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	I=0 ;
	printf("(DB10)  \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1  ;  i<=10  ;  i++)
		{
			printf(" %g ",DB10(i,j));
			I++ ;
			if(I == 10)
			{
				printf("\n");
				I=0 ;
			}
		}
	}
	printf("\n");

	I=0 ;
	printf("(DB20)  \n");
	for(j=1 ; j<=20 ; j++)
	{
		for(i=1  ;  i<=10  ;  i++)
		{
			printf(" %g ",DB20(i,j));
			I++ ;
			if(I == 10)
			{
				printf("\n");
				I=0 ;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(DB30)  \n");
	for(j=16 ; j<=20 ; j++)
	{
		for(i=1  ;  i<=10  ;  i++)
		{
			printf(" %g ",DB30(i,j));
			I++ ;
			if(I == 10)
			{
				printf("\n");
				I=0 ;
			}
		}
	}
	printf("\n");

	printf("  DVAL1 =  %g  \n",DVAL1);

	if ( DA30(15)  >   DA10(15) )
	{
		NN=2 ;
	}
	else
	{
		NN=1 ;
	}

	for(III=10  ;  III>=9  ;  III-=1)
	{
		for(I=2  ;  I<=8  ;  I+=NN)
		{
			for(J=2 ; J<=10 ; J++)
			{
				DB30(-I+11,-J+21)= DB10(I,J+NN)+DB20(I,J+NN);
				DB10(I,J)  = (DB10(I,J) < DB20(J,I)) ? DB10(I,J):DB20(J,I);
				for(K=1 ; K<=3 ; K++)
				{
					DC10(I,J,K)   = DC20(I,J+NN,K)
					    + DC30(-I+11,-J+21,-K-NN+6);
					DC20(I,J,K)   = DC10(I-1,J-1,K)
					    - DC30(-I+11,-J*2+21,-K+6);
LBL_56: 
					;
					DC30(-I+11,-J+21,-K+6)= DC20(I-1,J,K)
					    +DC30(-I+11,-J*2+21,-K-NN+6);
				}
			}
			if ( DA10(I) <= DA20(I) || DA10(I) >= DA30(I))
			{
				LD10(I)=1 ;
			}
			else
			{
				LD10(I+15)=1^LD10(I+15);
			}
LBL_55: 
			;
		}
		DVAL1=DA10(III);
		DVAL2=DB10(III,1);
		DVAL3=DC10(III,1,1);
		NNN=III ;
		SUB1(da10,da20,da30,NNN);
LBL_50: 
		;
	}

	printf("  ***  ** NO.2 *** \n");
	I=0 ;
	printf("(DB10)  \n");
	for(j=1 ; j<=10 ; j++)
	{
		for(i=1  ;  i<=10  ;  i++)
		{
			printf(" %g ",DB10(i,j));
			I++ ;
			if(I == 10)
			{
				printf("\n");
				I=0 ;
			}
		}
	}
	printf("\n");

	I=0;
	printf("(DB30)  \n");
	for(j=11 ; j<=20 ; j++)
	{
		for(i=1  ;  i<=10  ;  i++)
		{
			printf(" %g ",DB30(i,j));
			I++ ;
			if(I == 10)
			{
				printf("\n");
				I=0 ;
			}
		}
	}
	printf("\n");

	I=0 ;
	printf("(DC10)  \n");
	for(k=1 ; k<=5 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			for(i=1  ;  i<=10  ;  i++)
			{
				printf(" %g ",DC10(i,j,k));
				I++ ;
				if(I == 10)
				{
					printf("\n");
					I=0 ;
				}
			}
		}
	}
	printf("\n");

	I=0 ;
	printf("(DC20)  \n");
	for(k=1 ; k<=5 ; k++)
	{
		for(j=1 ; j<=20 ; j++)
		{
			for(i=1  ;  i<=10  ;  i++)
			{
				printf(" %g ",DC20(i,j,k));
				I++ ;
				if(I == 10)
				{
					printf("\n");
					I=0 ;
				}
			}
		}
	}
	printf("\n");

	I=0 ;
	printf("(DC30)  \n");
	for(k=3 ; k<=5 ; k++)
	{
		for(j=11 ; j<=20 ; j++)
		{
			for(i=1  ;  i<=10  ;  i++)
			{
				printf(" %g ",DC30(i,j,k));
				I++ ;
				if(I == 10)
				{
					printf("\n");
					I=0 ;
				}
			}
		}
	}
	printf("\n");

	printf("(LD10)  \n");
	for(i=1  ;  i<=30  ;  i++)
	{
		printf(" %lu ",LD10(i));
		if(i==10 || i==20)
		{
			printf("\n");
		}
	}
	printf("\n");

	exit (0);
}
#define DIM1(i) dim1[i-1]
#define DIM2(i) dim2[i-1]
#define DIM3(i) dim3[i-1]
int SUB1(dim1,dim2,dim3,NN)
double dim1[],dim2[],dim3[] ;
long int NN;
{
	long int ICNT1,ICNT2,I,i,J,IVAL1,IVAL2,IVAL3 ;

	ICNT2=0;
	ICNT1=0 ;
	for(I=1  ;  I<=NN  ;  I++)
	{
		for(J=1 ; J<=20 ; J++)
		{
			ID10(I,J)=ID10(I,J)-ICNT2 ;
			IVAL1=(DVAL1>0.0) ? (int)(DVAL1+0.5) : (int)(DVAL1-0.5);
			IVAL2=(DVAL2>0.0) ? (int)(DVAL2+0.5) : (int)(DVAL2-0.5);
			IVAL3=(DVAL3>0.0) ? (int)(DVAL3+0.5) : (int)(DVAL3-0.5);
			ID20(I,J)=(ID20(I,J)+IVAL2)-IVAL3*IVAL1 ;
			ID30(I,1)=ID30(I,1)+fmod(ID30(I,J),IVAL1);
LBL_20: 
			;
		}
		DIM1(I)=(DIM1(I) > DIM2(I)) ? DIM1(I) : DIM2(I);
		DIM1(I)=(DIM1(I) > DIM3(I)) ? DIM1(I) : DIM2(I);
LBL_10: 
		;
	}
	printf("  ***  *** SUB *** \n");
	i=0 ;
	printf("  (ID30)    \n");
	for(I=1  ;  I<=NN  ;  I++)
	{
		printf(" %ld ",ID30(I,1));
		i++ ;
		if(i == 10)
		{
			printf("\n");
			i=0 ;
		}
	}
	printf("\n");
	return 0;
}
