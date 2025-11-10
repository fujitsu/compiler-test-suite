#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define IV11(i) iv11[i-1]
#define IV12(i) iv12[i-1]
#define IV13(i) iv13[i-1]
#define CV11(i) cv11[i-1]
#define CV12(i) cv12[i-1]
#define CV13(i) cv13[i-1]
#define RV21(i) rv21[i-1]
#define RV22(i) rv22[i-1]
#define CV21(i) cv21[i-1]
#define CV22(i) cv22[i-1]
#define IV31(i) iv31[i-1]
#define LV31(i) lv31[i-1]
#define LV32(i) lv32[i-1]
#define DV31(i) dv31[i-1]
static long int iv11[10],iv12[10],iv13[10];
COMPLEX8 cv11[10],cv12[10],cv13[10];
float rv21[10],rv22[10];
COMPLEX8 cv21[10],cv22[10];
long int iv31[10];
unsigned long int lv31[10],lv32[10];
double dv31[10];
int main()
{
	float RS11=2,RS31=3.5;
	float RS12;
	COMPLEX8 CS12;
	long int IS21=1,IS22=3;
	double DS21=3;
	unsigned long int LS21,LS22;
	unsigned long int LS31=1;
	long int i;
	long int j=0;

	for(i=0;i< 10;i++)
	{
		rv21[i]=2.0;
	}
	for(i=0;i<10;i++)
	{
		if(i>=0 && i<=4)
		{
			cv21[i].real = 5;
			cv21[i].imag = 5;
		}
		else
		{
			cv21[i].real = 1;
			cv21[i].real = 2;
		}
	}
	for(i=0;i<10;i++)
	{
		if(i>=0 && i<=4)
		{
			cv22[i].real = 5;
			cv22[i].imag = 5;
		}
		else
		{
			cv22[i].real = 1;
			cv22[i].real = 2;
		}
	}
	for(i=0;i< 10;i++)
	{
		dv31[i]=0.0;
	}
	for(i=1;i<=10;i++)
	{
		IV11(i)=i;
		j=j+2;
		IV12(i)=j;
		IV13(i)=(float)(IV12(i))/(float)IV11(i)*(IV12(i)/(double)(IV11(i)));
		CV11(i).real=sqrt((float)(0));
		CV11(i).imag=sqrt((float)(IV13(i)));
		CV12(i).real=pow(CV11(i).real,(int)RS11);
		CV12(i).imag=pow(CV11(i).imag,(int)RS11);
		CS12.real=CV12(i).real;
		CS12.imag=CV12(i).imag;
		RS12=CS12.real/2;
		CS12.real=RS12*CS12.real+0.00001-j;
		RS12=IV12(i)/2.;
		CV13(i).real=RS12+3.;
		CV13(i).imag=0;
		IV11(i)=CS12.real;
	}
	printf("  ****  **** (1) ****\n");
	printf(" IV11 \n");
	for(i=1;i<=10;i++)
	{
		printf(" %ld ",IV11(i));
	}
	printf("\n");
	printf(" IV12 \n");
	for(i=1;i<=10;i++)
	{
		printf(" %ld ",IV12(i));
	}
	printf("\n");
	printf(" IV13 \n");
	for(i=1;i<=10;i++)
	{
		printf(" %ld ",IV13(i));
	}
	printf("\n");
	printf(" CV11 \n");
	for(i=1;i<=10;i++)
	{
		printf(" (%g,%g) ",CV11(i).real,CV11(i).imag);
	}
	printf("\n");
	printf(" CV12 \n");
	for(i=1;i<=10;i++)
	{
		printf(" (%g,%g) ",CV12(i).real,CV12(i).imag);
	}
	printf("\n");
	printf(" CV13 \n");
	for(i=1;i<=10;i++)
	{
		printf(" (%g,%g) ",CV13(i).real,CV13(i).imag);
	}
	printf("\n");
	printf(" J= %ld\n",j);
	for(i=1;i<=9;i++)
	{
		LS21=1;
		if ((fmod((float)(i),3.0) -1.0) < 0.0) goto LBL_21;
		if ((fmod((float)(i),3.0) -1.0) == 00) goto LBL_22;
		goto LBL_23;
LBL_21:
		;
		RV21(i)=IS21+i;
		CV21(i).real=RV21(i+1)*DS21;
		CV21(i).imag=0;
		goto LBL_25;
LBL_22:
		;
		RV21(i)=i-IS22;
		CV21(i).real=(float)(0);
		CV21(i).imag=(float)(DS21*RV21(i+1));
		goto LBL_25;
LBL_23:
		;
		LS21=i>5;
		CV21(i).real=(float)(DS21);
		CV21(i).imag=(float)(-DS21);
		RV21(i)=IS22-i;
		if (LS21 ==1)
		{
			CV21(i).real = -CV21(i==1).real;
			CV21(i).imag = -CV21(i==1).imag;
		}
LBL_25:
		;
	}
	if ((fmod((float)(i),3.0) -1.0) <= 0.0) goto LBL_26;
	goto  LBL_27;
LBL_26:
	;
	if (i+3 >  10)goto LBL_27         ;
	if (CV21(i).imag == CV21(i+3).imag)
	{
		LS22=1;
	}
	else
	{
		LS22=0;
	}
	goto LBL_28;
LBL_27:
	;
	LS22=0;
LBL_28:
	;
	if ((LS21 &&  LS22) == 1)
	{
		RV22(i)=0.5*CV22(i).real;
	}
	else
	{
		if ((LS21 || LS22) ==1)goto LBL_29         ;
		RV22(i)=0.;
		goto LBL_200;
LBL_29:
		;
		RV22(i)=CV22(i).real*2.;
	}
LBL_200:
	;
	printf("  ****  **** (2) ****\n");
	printf(" RV21 \n");
	for (i=1; i<=10; i++)
	{
		printf (" %g ",RV21(i));
	}
	printf ("\n");
	printf(" RV22 \n");
	for (i=1; i<=10; i++)
	{
		printf(" %g ",RV22(i));
	}
	printf ("\n");
	printf(" CV21 \n");
	j = 0;
	for (i=1; i<=10; i++)
	{
		printf(" (%g,%g) ",CV21(i).real,CV21(i).imag);
		j++;
		if(j == 4)
		{
			printf("\n");
		}
	}
	printf ("\n");
	for(i=1;i<=10;i++)
	{
		LV31(i)=i>5;
		LV32(i)=(!LV31(i))==((3< i)&&(i< 7));
		if ((LS31 && LV31(i)) == 1)
		{
			DV31(i)=pow(i,RS31);
			IV31(i)=pow(RS31,i);
		}
		else
		{
			if (LS31 == 1)
			{
				DV31(i)=i*RS31;
				IV31(i)=RS31-i;
			}
		}
	}
	printf("  ****  **** (3) ****\n");
	printf(" LV31 \n");
	for (i=1; i<=10; i++)
	{
		printf(" %lu ",LV31(i));
	}
	printf ("\n");
	printf(" LV32 \n");
	for (i=1; i<=10; i++)
	{
		printf(" %lu ",LV32(i));
	}
	printf ("\n");
	printf(" DV31 \n");
	for (i=1; i<=10; i++)
	{
		printf(" %g ",DV31(i));
	}
	printf ("\n");
	printf(" IV31 \n");
	for (i=1; i<=10; i++)
	{
		printf(" %ld ",IV31(i));
	}
	printf ("\n");
	exit(0);
}
