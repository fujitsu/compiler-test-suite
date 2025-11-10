#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB2(long int NN);
int SUB1(long int NN);
int INIT();
#define DA1(i) da1[i-1]
#define DA2(i) da2[i-1]
#define DA3(i) da3[i-1]
#define DB1(i,j) db1[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DB3(i,j) db3[i-1][j-1]
#define CD1(i,j) cd1[i-1][j-1]
#define CD2(i,j) cd2[i-1][j-1]
#define CD3(i,j) cd3[i-1][j-1]
#define DW1(i) dw1[i-1]
#define DW2(i,j) dw2[i-1][j-1]
#define CW1(i,j) cw1[i-1][j-1]
double da1[20],da2[20],da3[20] ;
double db1[20][20],db2[20][20],db3[20][20] ;
COMPLEX16 cd1[20][20],cd2[20][20],cd3[20][20] ;
double dw1[20],dw2[20][20] ;
COMPLEX16 cw1[20][20] ;
int main()
{
	long int NN,I,J,i,j ;

	NN=18 ;
	INIT() ;
	SUB1(NN) ;
	for(I=1 ; I<=20 ; I++)
	{
		DW1(I) = DA1(I)+DA2(I)+DA3(I) ;
		for(J=1 ; J<=20 ; J++)
		{
			DW2(I,J) = DB1(I,J)+DB2(I,J)+DB3(I,J) ;
			CW1(I,J).dreal = CD1(I,J).dreal+CD2(I,J).dreal+CD3(I,J).dreal ;
			CW1(I,J).dimag = CD1(I,J).dimag+CD2(I,J).dimag+CD3(I,J).dimag ;
LBL_10: 
			;
		}
	}

	for(i=1 ; i<=20 ; i++)
	{
		printf(" %g ",DW1(i)) ;
	}
	printf("\n") ;

	for(j=1 ; j<=20 ; j++)
	{
		printf("\n") ;
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DW2(i,j)) ;
		}
	}
	printf("\n") ;

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("(%g,%g )",CW1(i,j).dreal,CW1(i,j).dimag) ;
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n") ;

	INIT() ;
	SUB2(NN) ;
	for(I=1 ; I<=20 ; I++)
	{
		DW1(I)=DA1(I)+DA2(I)+DA3(I) ;
		for(J=1 ; J<=20 ; J++)
		{
			DW2(I,J) = DB1(I,J)+DB2(I,J)+DB3(I,J) ;
			CW1(I,J).dreal = CD1(I,J).dreal+CD2(I,J).dreal+CD3(I,J).dreal ;
			CW1(I,J).dimag = CD1(I,J).dimag+CD2(I,J).dimag+CD3(I,J).dimag ;
LBL_30: 
			;
		}
	}
	for(i=1 ; i<=20 ; i++)
	{
		printf(" %g ",DW1(i)) ;
	}
	printf("\n") ;

	for(j=1 ; j<=20 ; j++)
	{
		printf("\n") ;
		for(i=1 ; i<=20 ; i++)
		{
			printf(" %g ",DW2(i,j)) ;
		}
	}
	printf("\n") ;

	for(j=1 ; j<=20 ; j++)
	{
		for(i=1 ; i<=20 ; i++)
		{
			printf("( %g,%g )",CW1(i,j).dreal,CW1(i,j).dimag) ;
			if(i==10 || i==20)
			{
				printf("\n");
			}
		}
	}
	printf("\n") ;

	exit (0);
}

int INIT()
{
	long int I,J ;
	for(J=1 ; J<=20 ; J++)
	{
		DA1(J) = 1.0 ;
		DA2(J) = 2.0 ;
		DA3(J) = 3.0 ;
		for(I=1 ; I<=20 ; I++)
		{
			DB1(I,J) = (double)(I) ;
			DB2(I,J) = (double)(J) ;
			DB3(I,J) = 1.0 -(double)(I-J) ;
			CD1(I,J).dreal = 1.0  ;
			CD1(I,J).dimag = 4.0 ;
			CD2(I,J).dreal = 2.0  ;
			CD2(I,J).dimag = 3.0  ;
			CD3(I,J).dreal = 3.0  ;
			CD3(I,J).dimag = 2.0 ;
LBL_10: 
			;
		}
	}
	return 0;
}
int SUB1(NN)
long int NN;
{
	long int N1,N2,J,N3,I ;

	for(J=2 ; J<=NN ; J++)
	{
		N1 = J ;
		N2 = J+1 ;
		N3 = J-1 ;
		DA1(N1)=DA1(N2)+DB1(N1,N2) ;
		if (DA2(J) >  3.0)
		{
			N2=1 ;
		}
		DA2(N3)=DA2(N1)+DA3(N2) ;
		for(I=2 ; I<=NN ; I++)
		{
			DB1(I,N1) = DB2(I,N3)+DB3(N2,I) ;
			DB3(I,N2) = CD3(I,J).dreal-CD2(I,J).dimag ;
			CD1(I,N2).dreal = CD1(I-1,N2).dreal
			    +(CD2(I,J).dreal*CD3(I,J).dreal
			    -CD2(I,J).dimag*CD3(I,J).dimag) ;
			CD1(I,N2).dimag = CD1(I-1,N2).dimag
			    +(CD2(I,J).dreal*CD3(I,J).dimag
			    +CD2(I,J).dimag*CD3(I,J).dreal) ;
LBL_20: 
			;
		}
LBL_10: 
		;
	}

	for(J=2 ; J<=NN ; J++)
	{
LBL_41: 
		;
		N1=J-1 ;
LBL_42: 
		;
		N2=1 ;
LBL_43: 
		;
		N3=N2+1 ;
		DA2(J) = DA2(J-1)+DB2(N1,J) ;
		if (DA3(J)> 0) goto LBL_45 ;
LBL_44: 
		;
		DA3(N1) = DA1(J)-CD2(J,J).dreal ;
LBL_45: 
		;
		CD2(J,N1).dreal = (double)(DA1(J)) ;
		CD2(J,N1).dimag = (double)(DA2(N2)) ;
		for(I=2 ; I<=NN ; I++)
		{
			DB2(I,N1) = DB3(I,N3)+DB2(N3,I) ;
			CD2(I,N3).dreal = (double)(DB1(I,N2)) ;
			CD2(I,N3).dimag = (double)(DA1(N1)) ;
			CD3(I,N2).dreal = CD2(I-1,N2).dreal+CD2(I,J).dreal-CD1(I,J).dreal ;
			CD3(I,N2).dimag = CD2(I-1,N2).dimag+CD2(I,J).dimag-CD1(I,J).dimag ;
LBL_30: 
			;
		}
LBL_40: 
		;
	}
	return 0;
}
int SUB2(NN)
long int NN ;
{
	long int IPCON1,IPCON2,N1,I,N2,N3,J ;
	double DMAX,DMIN ;

	IPCON1 = 1 ;
	IPCON2 = IPCON1+1 ;
	for(I=3 ; I<=NN ; I++)
	{
		N1=I+1 ;
		N2=I-1 ;
		N3=1 ;
		if (fmod(I,2) == 0)
		{
			for(J=3 ; J<=NN ; J++)
			{
				DA1(N1) = (DA1(N1) > DA2(J)) ? DA1(N1):DA2(J) ;
				DB1(N1,J) = DB1(N2,NN-J+1)-DA1(N2) ;
				CD1(J,N3).dreal = CD1(IPCON2,J).dreal+CD2(J,I).dreal ;
				CD1(J,N3).dimag = CD1(IPCON2,J).dimag+CD2(J,I).dimag ;
LBL_20: 
				;
			}
			for(J=2 ; J<=NN ; J++)
			{
				CD2(J,N1+1).dreal = CD2(J-1,N2+1).dreal+CD3(J,I).dreal ;
				CD2(J,N1+1).dimag = CD2(J-1,N2+1).dimag+CD3(J,I).dimag ;
				DB2(J+1,I+N3) = DB2(J,IPCON1)-DA3(J) ;
LBL_30: 
				;
			}
		}
		N1=I-1 ;
		N2=I+1 ;
		N3=I ;
		if (N3-10 >= 0 )  goto LBL_31 ;
LBL_31: 
		;
		for(J=2 ; J<=NN ; J++)
		{
			DB3(J,N1) = DB3(N1,N2) ;
			CD3(J+1,N3-1).dreal = CD3(J,N2+1).dreal+CD1(I,J).dreal ;
			CD3(J+1,N3-1).dimag = CD3(J,N2+1).dimag+CD1(I,J).dimag ;
LBL_40: 
			;
		}
		goto LBL_33 ;
LBL_32: 
		;
		for(J=3 ; J<=NN/2 ; J++)
		{
			DA2(J+N1) = DA2(J+N3)+DA3(J) ;
LBL_50: 
			;
		}
LBL_33: 
		;
		DMAX = 0.0 ;
		for(J=2 ; J<=NN ; J++)
		{
			if (CD1(N1,J).dreal >  DMAX)
			{
				DMAX = CD1(N1,J).dreal ;
				CD2(N2,J).dreal = CD1(N2,J-1).dreal-CD2(J+1,N1-1).dreal ;
				CD2(N2,J).dimag = CD1(N2,J-1).dimag-CD2(J+1,N1-1).dimag ;
			}
LBL_60: 
			;
		}
		printf(" %g \n",DMAX) ;
		DMIN = 9999.0 ;
		for(J=2 ; J<=NN ; J++)
		{
			if (CD2(N1,J).dimag >  DMIN)
			{
				DMAX = CD2(N1,J).dreal ;
				CD3(N2+1,J-1).dreal = CD1(N2,J-1).dreal-CD3(J+1,N1-1).dreal ;
				CD3(N2+1,J-1).dimag = CD1(N2,J-1).dimag-CD3(J+1,N1-1).dimag ;
			}
LBL_70: 
			;
		}
		printf(" %g \n",DMIN) ;
LBL_10: 
		;
	}
	return 0;
}
