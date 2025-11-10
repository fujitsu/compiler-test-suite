#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define CASE1(i)  case1[i-1]
#define CASE2(i)  case2[i-1]
#define CASE2A(i) case2a[i-1]
#define CASE2B(i) case2b[i-1]
#define CASE3(i)  case3[i-1]
#define CASE4A(i) case4a[i-1]
#define CASE4B(i) case4b[i-1]
#define CASE5(i)  case5[i-1]
#define CASE5L(i) case5l[i-1]
#define CASE6A(i) case6a[i-1]
#define CASE6B(i) case6b[i-1]
float  case1[100];
float  case2a[100],case2b[100];
float  case3[100];
float  case4a[100],case4b[100];
float  case5[100],case5l[2048];
float  case6a[100],case6b[100];
long int    TCASE2(float p1[],float p2[]);
long int    TCASE3(int p1,float p2[]);
long int    TCASE4(int p1,int p2,float p3[],float p4[]);
long int    TCASE5(int p1,float p2[],float p3[]);
long int    TCASE6(float p1[],float p2[]);
int main()
{
	long int i,j,I,J,RC;
	for(i=0;i< 100;i++){
		case1[i]=1.0;
		case2a[i]=2.0;
		case2b[i]=3.0;
		case3[i]=4.0;
		case4a[i]=5.0;
		case4b[i]=6.0;
		case5[i]=7.0;
		case5l[i]=0.5;
		case6a[i]=8.0;
		case6b[i]=9.0;
	}
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=100;I++)
		{
			CASE1(I)=1.5;
LBL_10:
			;
		}
	}
	goto LBL_500;
LBL_100:
	;
	RC=TCASE2(case2a,case2b);
	if(RC==1) goto LBL_100;
	if(RC==2) goto LBL_200;
	if(RC==3) goto LBL_300;
	if(RC==4) goto LBL_400;
	if(RC==5) goto LBL_500;
	if(RC==6) goto LBL_600;
	goto LBL_555;
LBL_200:
	;
	RC=TCASE3(100,case3);
	if(RC==1) goto LBL_100;
	if(RC==2) goto LBL_200;
	if(RC==3) goto LBL_300;
	if(RC==4) goto LBL_400;
	if(RC==5) goto LBL_500;
	if(RC==6) goto LBL_600;
	goto LBL_555;
LBL_300:
	;
	RC=TCASE4(100,100,case4a,case4b);
	if(RC==1) goto LBL_100;
	if(RC==2) goto LBL_200;
	if(RC==3) goto LBL_300;
	if(RC==4) goto LBL_400;
	if(RC==5) goto LBL_500;
	if(RC==6) goto LBL_600;
LBL_400:
	;
	RC=TCASE5(100,case5,case5l);
	if(RC==1) goto LBL_100;
	if(RC==2) goto LBL_200;
	if(RC==3) goto LBL_300;
	if(RC==4) goto LBL_400;
	if(RC==5) goto LBL_500;
	if(RC==6) goto LBL_600;
	goto LBL_555;
LBL_500:
	;
	RC=TCASE6(case6a,case6b);
	if(RC==1) goto LBL_100;
	if(RC==2) goto LBL_200;
	if(RC==3) goto LBL_300;
	if(RC==4) goto LBL_400;
	if(RC==5) goto LBL_500;
	if(RC==6) goto LBL_600;
LBL_555:
	;
	printf(" *** RETURN ABNORMAL END ***\n");
	exit(8)  ;
LBL_600:
	;
	printf(" ***  ***\n");
	for(i=1;i<=100;i++){
		printf(" %g %g %g %g %g %g \n",CASE1(i),CASE2A(i),CASE2B(i),
		    CASE3(i),CASE4A(i),CASE4B(i));
	}
	for(I =1;I <=100;I ++)
	{
		if (I == 1)
		{
			for(j=1;j<=100;j+=4){
				printf(" %g ",CASE5(j));
				printf(" %g ",CASE5(j+1));
				printf(" %g ",CASE5(j+2));
				printf(" %g \n",CASE5(j+3));
			}
			CASE5L(I)=20.0;
			printf(" %g \n",CASE5L(2048));
			for(i=1;i<=2048;i+=4){
				printf(" %g ",CASE5L(I));
				printf(" %g ",CASE5L(I+1));
				printf(" %g ",CASE5L(I+2));
				printf(" %g \n",CASE5L(I+3));
			}
		}
		CASE5(I)=I;
LBL_700:
		;
	}
	exit (0);
}
long int TCASE2(float case1[100],float case2[100])
{
	long int i,j,I,J;
	for(J =1;J <=10;J ++)
	{
		for(I =1;I <=100;I ++)
		{
LBL_2001:
			;
			CASE1(I)=2.5;
		}
		for(I =1;I <=80;I ++)
		{
LBL_2000:
			;
			CASE2(I)=2.8;
		}
	}
	if ((CASE1(2) != CASE1(3)) ||
	    (CASE2(2) != CASE2(8)) ||
	    (CASE1(1) == CASE2(1))  )
	{
		return 0;
	}
	return 3;
}
long int TCASE3(int N,float case3[100])
{
	float M,L;
	long int I,K,J;
	for(J=1;J<=10;J++)
	{
		for(I=1;I<=N;I++)
		{
LBL_3000:
			;
			CASE3(I)=5.5;
		}
	}
	return 4;
}
long int TCASE4(int M,int L,float case4a[100],float case4b[100])
{
	long int i,j,I,J;
	for(J =1;J <=10;J ++)
	{
		for(I=1;I<=M;I+=2)
		{
LBL_4001:
			;
			CASE4A(I)=4.0;
		}
		for(I =1;I <=L;I +=3)
		{
LBL_4000:
			;
			CASE4B(I)=4.5;
		}
	}
	return 6;
}
long int   TCASE5(int K,float case5[100],float case5l[100])
{
	long int i,j,I,J;
	for(J=1;J<=10;J++)
	{
		for(I =1;I <=2048;I ++)
		{
			CASE5L(I)=CASE5L(I)*2.0;
LBL_5001:
			;
		}
		CASE5L(J)=J;
		for(I =1;I <=K;I +=2)
		{
			CASE5(I)=6.0;
LBL_5000:
			;
		}
	}
	return 1;
}
long int TCASE6(float case6a[100],float case6b[100])
{
	long int i,j,I,J;
	for(J =1;J <=10;J ++)
	{
		for(I =1;I <=100;I +=2)
		{
LBL_6000:
			;
			CASE6A(I)=6.5;
		}
	}
	for(J =1;J <=5;J ++)
	{
		for(I =1;I <=100;I +=3)
		{
LBL_6001:
			;
			CASE6B(I)=7.0;
		}
	}
	return 2;
}
