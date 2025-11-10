#include <stdio.h>
#include <math.h>
#include "000.h"
#include <stdlib.h>
#define IDATA1(i) idata1[i-1]
#define IDATA2(i) idata2[i-1]
#define IDATA3(i) idata3[i-1]
#define IDATA4(i) idata4[i-1]
#define RDATA1(i) rdata1[i-1]
#define RDATA2(i) rdata2[i-1]
#define RDATA3(i) rdata3[i-1]
#define RDATA4(i) rdata4[i-1]
#define RDATA5(i) rdata5[i-1]
#define RDATA6(i) rdata6[i-1]
#define RDATA7(i) rdata7[i-1]
#define RDATA8(i) rdata8[i-1]
#define CDATA1(i) cdata1[i-1]
#define CDATA2(i) cdata2[i-1]
#define LDATA1(i) ldata1[i-1]
#define LDATA2(i) ldata2[i-1]
long int  idata1[50],idata2[50],idata3[50],idata4[50];
float rdata1[50],rdata2[50],rdata3[50],rdata4[50];
double    rdata5[50],rdata6[50],rdata7[50],rdata8[50];
COMPLEX16 cdata1[50],cdata2[50];
unsigned  long int ldata1[50],ldata2[50];
int main()
{
	long int IDATA,i,I;
	for(i=0;i< 20;i++){
		ldata1[i]=1;
		ldata2[i]=0;
	}
	for(i=20;i< 30;i++){
		ldata1[i]=0;
		ldata2[i]=1;
	}
	for(i=30;i< 50;i++){
		ldata1[i]=1;
		ldata2[i]=1;
	}
	for(I=1;I<=50;I++)
	{
		IDATA1(I)=1;
		IDATA2(I)=2;
		IDATA3(I)=IDATA1(I);
		IDATA4(I)=IDATA2(I);
		RDATA1(I)=0.1;
		RDATA2(I)=0.1;
		RDATA3(I)=RDATA1(I);
		RDATA4(I)=RDATA2(I);
		RDATA5(I)=3.3;
		RDATA6(I)=4.4;
		RDATA7(I)=RDATA5(I);
		RDATA8(I)=RDATA6(I);
		CDATA1(I).dreal=3.3;
		CDATA1(I).dimag=-1.65;
		CDATA2(I).dreal=CDATA1(I).dreal;
		CDATA2(I).dimag=CDATA1(I).dimag;
		LDATA1(I)=(LDATA1(I)&&LDATA2(I))?1:0;
		LDATA1(I)=(LDATA1(I)||LDATA2(I))?1:0;
		LDATA1(I)=(!(LDATA1(I)||LDATA2(I)))?1:0;
LBL_10:
		;
	}
	printf("  **  ** TEST1 \n");
	for(i=1;i<=50;i++){
		printf(" %ld %ld %g %g %g %g ",IDATA3(i),IDATA4(i),RDATA3(i),
		    RDATA4(i),RDATA7(i),RDATA8(i));
		printf(" %g %g %g %g \n",CDATA1(i).dreal,CDATA2(i).dreal,
		    CDATA1(i).dimag,CDATA2(i).dimag);
	}
	for(I=1;I<=50;I++)
	{
		if (LDATA1(I)==1)
		{
			RDATA1(I)=RDATA1(I)+RDATA2(I);
			RDATA2(I)=RDATA1(I)-RDATA2(I);
			RDATA3(I)=RDATA1(I)*RDATA2(I);
			RDATA4(I)=RDATA1(I)/RDATA2(I);
			LDATA1(I)=(!(LDATA1(I)));
			RDATA1(I)=pow(RDATA1(I),2);
			RDATA1(I)=RDATA1(I)/2;
			RDATA2(I)=pow(RDATA2(I),3);
			RDATA2(I)=RDATA2(I)/3;
			RDATA3(I)=pow(RDATA3(I),4);
			RDATA3(I)=RDATA3(I)/4;
			LDATA2(I)=(!(LDATA1(I)))?1:0;
			LDATA2(I)=(LDATA1(I)&&LDATA2(I))?1:0;
			LDATA2(I)=(LDATA1(I)||LDATA2(I))?1:0;
			LDATA2(I)=(!(LDATA2(I)))?1:0;
			LDATA2(I)=(1&&LDATA2(I))?1:0;
			LDATA2(I)=(LDATA1(I)||LDATA2(I))?1:0;
		}
		else
		{
			IDATA1(I)=(int)(RDATA1(I));
			IDATA2(I)=(int)(RDATA2(I));
			IDATA3(I)=(int)(RDATA3(I));
			IDATA4(I)=(int)(RDATA4(I));
			RDATA1(I)=sin(RDATA1(I));
			RDATA2(I)=sin(RDATA2(I));
			RDATA3(I)=(float)(IDATA1(I));
			RDATA4(I)=(float)(IDATA2(I));
			IDATA=RDATA4(I);
		}
LBL_20:
		;
	}
	for(I=1;I<=50;I++)
	{
		if (LDATA2(I)==1)
		{
			IDATA1(I)=abs(IDATA1(I));
			IDATA2(I)=abs(IDATA2(I));
			IDATA3(I)=abs(IDATA3(I));
			IDATA4(I)=abs(IDATA4(I));
			RDATA1(I)=fabs(RDATA1(I));
			RDATA2(I)=fabs(RDATA2(I));
			RDATA3(I)=fabs(RDATA3(I));
		}
LBL_30:
		;
	}
	for(I=1;I<=50;I++)
	{
		if (IDATA1(I) <  IDATA2(I))
		{
			IDATA1(I)=IDATA2(I);
		}
		if (IDATA3(I) <= IDATA4(I))
		{
			IDATA3(I)=IDATA4(I);
		}
		if (RDATA1(I) == RDATA2(I))
		{
			RDATA1(I)=RDATA2(I);
		}
		if (RDATA3(I) != RDATA4(I))
		{
			RDATA3(I)=RDATA4(I);
		}
		if (RDATA1(I) >  RDATA2(I))
		{
			CDATA1(I)=CDATA2(I);
		}
		if (RDATA1(I) >= 12.12)
		{
			CDATA1(I)=CDATA2(I);
		}
LBL_40:
		;
	}
	printf("  **  ** TEST2 \n");
	for(i=1;i<=50;i++){
		printf(" %ld %g %g %g %g ",IDATA4(i),RDATA1(i),RDATA4(i),
		    RDATA6(i),RDATA8(i));
		printf(" %g %g %g %g %lu %lu \n",CDATA1(i).dreal,CDATA2(i).dreal,
		    CDATA1(i).dimag,CDATA2(i).dimag,
		    LDATA1(i),LDATA2(i));
	}
	exit (0);
}
