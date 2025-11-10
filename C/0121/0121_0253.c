#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IA1(i) ia1[i-1]
#define IB1(i) ib1[i-1]
#define IC1(i) ic1[i-1]
#define IA2(i,j) ia2[i-1][j-1]
#define IB2(i,j) ib2[i-1][j-1]
#define IC2(i,j) ic2[i-1][j-1]
#define RA1(i) ra1[i-1]
#define RB1(i) rb1[i-1]
#define RC1(i) rc1[i-1]
#define RA2(i,j) ra2[i-1][j-1]
#define RB2(i,j) rb2[i-1][j-1]
#define RC2(i,j) rc2[i-1][j-1]
#define RA3(i,j,k) ra3[i-1][j-1][k-1]
#define RB3(i,j,k) rb3[i-1][j-1][k-1]
#define RC3(i,j,k) rc3[i-1][j-1][k-1]
#define DA1(i) da1[i-1]
#define DB1(i) db1[i-1]
#define DC1(i) dc1[i-1]
#define DP1(i) dp1[i-1]
#define DM1(i) dm1[i-1]
#define DA2(i,j) da2[i-1][j-1]
#define DB2(i,j) db2[i-1][j-1]
#define DC2(i,j) dc2[i-1][j-1]
#define DA3(i,j,k) da3[i-1][j-1][k-1]
#define DB3(i,j,k) db3[i-1][j-1][k-1]
#define DC3(i,j,k) dc3[i-1][j-1][k-1]
#define QA2(i,j) qa2[i-1][j-1]
#define QB2(i,j) qb2[i-1][j-1]
#define QC2(i,j) qc2[i-1][j-1]
#define CA1(i) ca1[i-1]
#define CB1(i) cb1[i-1]
#define CC1(i) cc1[i-1]
#define CA2(i,j) ca2[i-1][j-1]
#define CB2(i,j) cb2[i-1][j-1]
#define CC2(i,j) cc2[i-1][j-1]
#define CA3(i,j,k) ca3[i-1][j-1][k-1]
#define CB3(i,j,k) cb3[i-1][j-1][k-1]
#define CC3(i,j,k) cc3[i-1][j-1][k-1]
#define LA1(i) la1[i-1]
#define LB1(i) lb1[i-1]
#define LC1(i) lc1[i-1]
#define LA3(i,j,k) la3[i-1][j-1][k-1]
#define LB3(i,j,k) lb3[i-1][j-1][k-1]
#define LC3(i,j,k) lc3[i-1][j-1][k-1]
long int ia1[10],ib1[10],ic1[10];
long int ia2[10][10],ib2[10][10],ic2[10][10];
float ra1[10],rb1[10],rc1[10];
float ra2[10][10],rb2[10][10],rc2[10][10];
float ra3[10][10][10],rb3[10][10][10],rc3[10][10][10];
double da1[10],db1[10],dc1[10],dp1[10],dm1[10];
double da2[10][10],db2[10][10],dc2[10][10];
double da3[10][10][10],db3[10][10][10],dc3[10][10][10];
long double qa2[10][10],qb2[10][10],qc2[10][10];
COMPLEX ca1[10],cb1[10],cc1[10];
COMPLEX ca2[10][10],cb2[10][10],cc2[10][10];
COMPLEX ca3[10][10][10],cb3[10][10][10],cc3[10][10][10];
unsigned long int la1[10],lb1[10],lc1[10];
unsigned long int la3[10][10][10],lb3[10][10][10],lc3[10][10][10];
int main()
{
	long int i,j,IMAX,IMIN,k,m;
	float RMAX,RMIN,s,RK=0.0;
	;
	for(i=1;i<=10;i++){
		IA1(i)=i;
		IB1(i)=i+2;
		IC1(i)=i+3;
		RA1(i)=i+2;
		RB1(i)=i+3;
		RC1(i)=i+4;
		DA1(i)=2*i;
		DB1(i)=3*i-2;
		DC1(i)=2*i+3;
		DP1(i)=3*i;
		DM1(i)=2*i;
		CA1(i).real=(float)((float)(i));
		CA1(i).imag=(float)((float)(i));
		CB1(i).real=(float)((float)(i-5));
		CB1(i).imag=(float)((float)(i));
		CC1(i).real=(float)((float)(2*i));
		CC1(i).imag=(float)((float)(3*i));
		LA1(i)=0000;
		LB1(i)=fmod(i,3)==0;
		LC1(i)=fmod(i,4)==0;
		;
		for(j=1;j<=10;j++){
			IA2(i,j)=i*j;
			IB2(i,j)=i-j;
			IC2(i,j)=i+j;
			RA2(i,j)=i*j+5;
			RB2(i,j)=i-j-5;
			RC2(i,j)=i+j*3;
			DA2(i,j)=i*j-2;
			DB2(i,j)=i-j-3;
			DC2(i,j)=i+j-4;
			QA2(i,j)=i*j-5;
			QB2(i,j)=i-j-6;
			QC2(i,j)=i+j-7;
			CA2(i,j).real=(float)((float)(i+2));
			CA2(i,j).imag=(float)((float)(j*3));
			CB2(i,j).real=(float)((float)(i-2));
			CB2(i,j).imag=(float)((float)(j+3));
			CC2(i,j).real=(float)((float)(i*2));
			CC2(i,j).imag=(float)((float)(j-3));
			;
			for(k=1;k<=10;k++){
				RA3(i,j,k)=i+j+k;
				RB3(i,j,k)=i-j+k;
				RC3(i,j,k)=i+j-k;
				DA3(i,j,k)=i+j-k;
				DB3(i,j,k)=i*j+k;
				DC3(i,j,k)=i+j*k;
				CA3(i,j,k).real=(float)((float)(i+j+k));
				CA3(i,j,k).imag=(float)((float)(i+j*k));
				CB3(i,j,k).real=(float)((float)(i-j+k));
				CB3(i,j,k).imag=(float)((float)(i+j+k));
				CC3(i,j,k).real=(float)((float)(i+j+k));
				CC3(i,j,k).imag=(float)((float)(i-j+k));
				LA3(i,j,k)=(i+j)>(i+k);
				LB3(i,j,k)=(i-j)>(i+k);
				LC3(i,j,k)=(i*j)>(i+k);
LBL_10:
				;
			}
		}
	}
	printf(" #####  #####\n");
	;
	printf(" ----- TEST NO.1 ----- SIMPLEST POSSIBLE        \n");
	printf("                       S/V MIXTURE              \n");
	printf("\n");
	;
	RMAX=-99999.0;
	IMAX=0;
	;
	for(i=1;i<=10;i++){
		RA1(i)=RB1(i)+RC1(i);
		;
		DC2(i,2)=DA2(i,2)*2.0;
		DB2(i,2)=-DC2(i,2);
		for(j=1;j<=10;j++){
			QA2(i,j)=QB2(i,j)+DB2(i,2);
LBL_120:
			;
		};

		if (RA1(i)  >   17.0)goto LBL_110;
		if (i  <   5)
		{
			if (RB1(i)  >   RMAX)
			{
				RMAX=RB1(i);
				IMAX=i;
			}
			DA1(i)=DB1(i)+DC1(i);
			;
		}
		else
		{
			for(j=1;j<=10;j++){
				RA2(i,j)=RB2(i,j)+RC2(i,j);
LBL_130:
				;
			};

			DA1(i)=DB1(i)-DC1(i);
		};

		IA1(i)=IB1(i)*IC1(i);
LBL_110:
		;
	};

	printf("\n");
	printf(" RMAX=  %g  \n",RMAX);
	printf(" IMAX=  %ld  \n",IMAX);
	for(i=1;i<=10;i++){
		printf(" RB1=  %g \n",RB1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" IA1=  %ld \n",IA1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" DA1=  %g \n",DA1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" RA1=  %g \n",RA1(i));
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" RA2=  %g \n",RA2(i,j));
		}
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" QA2=  %g \n",(double)QA2(i,j));
		}
	}
	printf("\n");
	;
	;
	printf(" ----- TEST NO.2 ----- 2ND SIMPLEST POSSIBLE  \n");
	printf("                       S/V MIXTURE            \n");
	printf("\n");
	;
	;
	RMIN=99999.0;
	IMIN=0;
	;
	for(i=1;i<=10;i++)
	{
		RA1(i)=RB1(i)+RC1(i);
		if (i  <=  9)
		{
			if (RA1(i)  >   17.0)
			{
				if (RB1(i)  <   RMIN)
				{
					RMIN=RB1(i);
					IMIN=i;
				}
				for(j=1;j<=10;j++)
				{
					RA2(i,j)=RB2(i,j)*RA1(i);
LBL_240:
					;
				};

				DA1(i)=DB1(i)+DC1(i);
			}
			else
			{
				for(j=1;j<=10;j++)
				{
					RA2(i,j)=RC2(i,j)*RA1(i);
LBL_250:
					;
				}
				DA1(i)=DB1(i)-DC1(i);
			}
			IA1(i)=IB1(i)*IC1(i);
		};

		DC2(i,2)=DA2(i,2)*2.0;
		DB2(i,2)=-DC2(i,2);
		for(j=1;j<=10;j++)
		{
			QA2(i,j)=QB2(i,j)+DB2(i,2);
LBL_270:
			;
		};

LBL_210:
		;
	};

	printf("\n");
	printf(" RMIN=  %g  \n",RMIN);
	printf(" IMIN=  %ld  \n",IMIN);
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" RB1=  %g \n",RB1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" IA1=  %ld \n",IA1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" DA1=  %g \n",DA1(i));
	}
	printf("\n");
	for(i=1;i<=10;i++){
		printf(" RA1=  %g \n",RA1(i));
	}
	printf("\n");
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" RA2=  %g \n",RA2(i,j));
		}
		printf("\n");
		for(j=1;j<=10;j++){
			for(i=1;i<=10;i++){
				printf(" QA2=  %g \n",(double)QA2(i,j));
			}
			printf("\n");
			;
			printf(" ----- TEST NO.3 ----- MASK OPTIMIZATION      \n");
			printf("                       S/V MIXTURE            \n");
			printf("\n");
			;
			k=0;
			m=0;
			;
			for(i=1;i<=10;i++)
			{
				RA1(i)=RB1(i)*RC1(i);
				;
				DC2(i,2)=DA2(i,2)*2.0;
				DB2(i,2)=-DC2(i,2);
				for(j=1;j<=10;j++)
				{
					QA2(i,j)=QB2(i,j)+DB2(i,2);
LBL_370:
					;
				};

				if (i  <=  9)
				{
					for(j=1;j<=10;j++)
					{
						RA2(i,j)=RB2(i,j)*RA1(i);
LBL_340:
						;
					};

					if (RA1(i)  <   23.0)
					{
						if (RB1(i)  <   100)
						{
							k=k+1;
							DP1(k)=RB1(i);
						}
						else
						{
							m=m+1;
							DM1(i)=RB1(m);
						}
						DA1(i)=DB1(i)+DC1(i);
					}
					else
					{
						DA1(i)=DB1(i)-DC1(i);
					};

					IA1(i)=IB1(i)*IC1(i);
					;
					if (IC1(i) != 0)
					{
						IA1(i)=IB1(i)*fmod(IB1(i),IC1(i));
						for(j=1;j<=10;j++)
						{
							if (LA3(i,j,1)==1)
							{
								RA2(i,j)=RC2(i,j)*RA1(i);
							}
LBL_350:
							;
						};

					}
				}
LBL_310:
				;
			};

			for(i=1;i<=10;i++){
				printf(" DP1=  %g \n",DP1(i));
			}
			printf("\n");
			for(i=1;i<=10;i++){
				printf(" DM1=  %g \n",DM1(i));
			}
			printf("\n");
			for(i=1;i<=10;i++){
				printf(" RB1=  %g \n",RB1(i));
			}
			printf("\n");
			for(i=1;i<=10;i++){
				printf(" IA1=  %ld \n",IA1(i));
			}
			printf("\n");
			for(i=1;i<=10;i++){
				printf(" DA1=  %g \n",DA1(i));
			}
			printf("\n");
			for(i=1;i<=10;i++){
				printf(" RA1=  %g \n",RA1(i));
			}
			printf("\n");
			for(j=1;j<=10;j++){
				for(i=1;i<=10;i++){
					printf(" RA2=  %g \n",RA2(i,j));
				}
				printf("\n");
				;
				printf(" ----- TEST NO.4 ----- MASK OPTIMIZATION      \n");
				printf("                       INCLUDING INNER SCR    \n");
				printf("\n");
				;
				RMAX=-99999.0;
				IMAX=0;
				RMIN=99999.0;
				IMIN=0;
				k=0;
				m=0;
				s=-99999.0;
				;
				for(i=1;i<=10;i++)
				{
					RA1(i)=RB1(i)+RC1(i);
					if (RA1(i)  >   2.0*RB1(i))
					{
						s=RA1(i);
						if ( ! LC1(11-i)==1)
						{
							if (LA1(i)==1)
							{
								k=k+1;
								DP1(k)=RA1(i);
							}
						}
					};

					if (LB1(i)==1)
					{
						CA1(i).real=2.0*CB1(i).real;
						CA1(i).imag=2.0*CB1(i).imag;
						if((RB1(i)-7.0) < 0 ) goto LBL_999;
						RK=RB1(i)/3.0;
						for(j=1;j<=10;j++)
						{
							RA2(i,j)=RB2(i,j)*RA1(i);
						}
					}
					else
					{
						goto LBL_480;
					};

					;
LBL_999:
					;
					if((RB1(i)-7.0) == 0 )
						RK=RB1(i)/2.0;
					for(j=1;j<=10;j++)
					{
						RA2(i,j)=RB2(i,j)-RA1(i);
					}
					goto LBL_480;
				};

LBL_470:
				;
				RK=RB1(i)/4.0;
				if (RC1(i) >  0)
				{
					m=m+1;
					DM1(i)=RC1(m);
				}
				for(j=1;j<=10;j++)
				{
					RA2(i,j)=RB2(i,j)-RA1(i);
LBL_484:
					;
				};

LBL_480:
				;
				CB1(i).real=5.0+CA1(i).real;
				CB1(i).imag=5.0+CA1(i).imag;
			};

			DC2(i,2)=DA2(i,2)*RA1(i);
			DB2(i,2)=-DC2(i,2);
			for(j=1;j<=10;j++)
			{
				QA2(i,j)=QB2(i,j)+DB2(i,2);
LBL_488:
				;
			};

			DB1(i)=DB2(i,2);
			;
			if (RA1(i)  >   17.0)goto LBL_410         ;
			if (i  <=  4)
			{
				if (RC1(i) >  RMAX)
				{
					RMAX=RC1(i);
					IMAX=i;
				}
			}
			else
			{
				if (RC1(i) <  RMIN)
				{
					RMIN=RC1(i);
					IMIN=i;
				}
				DA1(i)=DB1(i)-DC1(i);
			}
			if (IC1(i) != 0)
			{
				IA1(i)=fmod(IB1(i),IC1(i));
			}
LBL_410:
			;
		};

		printf(" RMAX=  %g  \n",RMAX);
		printf(" IMAX=  %ld  \n",IMAX);
		printf(" RMIN=  %g  \n",RMIN);
		printf(" IMIN=  %ld  \n",IMIN);
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" RC1=  %g \n",RC1(i));
		}
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" DP1=  %g \n",DP1(i));
		}
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" DM1=  %g \n",DM1(i));
		}
		printf("\n");
		printf("   S=  %g  \n",s);
		printf("  RK=  %g  \n",RK);
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" CA1=  %g  %g  \n",CA1(i).real,CA1(i).imag);
		}
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" CB1=  %g  %g  \n",CB1(i).real,CB1(i).imag);
		}
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" IA1=  %ld  \n",IA1(i));
		}
		printf("\n");
		for(i=1;i<=10;i++){
			printf(" DA1=  %g \n",DA1(i));
		}
		printf("\n");
		for(i=1;i<=1;i++){
			printf(" RA1=  %g \n",RA1(i));
		}
		printf("\n");
		for(j=1;j<=10;j++){
			for(i=1;i<=10;i++){
				printf(" RA2=  %g \n",RA2(i,j));
			}
		}
		printf("\n");
		;
		;
	}
	exit (0);
}
