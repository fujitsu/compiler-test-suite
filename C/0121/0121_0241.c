#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int INIT(long int N);
#define RV01(i) com1.rv01[i-1]
#define RV02(i) com1.rv02[i-1]
#define RV03(i) com1.rv03[i-1]
#define IV01(i) com1.iv01[i-1]
#define IV02(i) com1.iv02[i-1]
#define LV01(i) com1.lv01[i-1]
#define IRC1    com1.irc1
#define ICODE   com1.icode
struct com1rec { 
	float             rv01[20],rv02[10];
	unsigned long int lv01[10];
	long int          iv01[10],iv02[10];
	float             rv03[10];
	long int          irc1,icode;        
} com1;
int main()
{
	long double QS01=5.5;
	long int I,I1=1,I2=2,I3=3;
	INIT(I1);
	for(I=1;I<=10;I++)
	{
		RV02(I)=(float)(I);
		RV02(I)=(float)(I)+RV02(I);
		if (IRC1 != 5) goto LBL_14;
		RV01(I+10-3)=pow(RV02(I),2);
		LV01(I)=RV01(I+10) > RV01(I+10-3);
		if (LV01(I)==1) goto LBL_12;
		RV01(I+10)=RV01(I+10)/4.0;
		ICODE=I*100+1;
		RV02(I)=RV01(I+10)*3.5-RV01(I+10)+QS01;
		IV02(I)=(long int)(RV01(I+10))*2+4;
		goto LBL_11;
LBL_14:
		;
		ICODE=I*100+4;
LBL_11:
		;
		if ((0 < IV02(I)) && (IV02(I) <= 10) == 1)
		{
			RV03(IV02(I))=sqrt((double)(I)/4.*(double)(I))*3.+QS01;
		}
		if (IRC1 != 5)
		{
			ICODE=I*100+2;
			goto LBL_10;
		}
LBL_12:
		;
		ICODE=I*100+3;
LBL_10:
		;
		IV01(I)=ICODE;
	}
	INIT(I2);
	for(I=1;I<=10;I++)
	{
		RV02(I)=I;
		RV02(I)=(float)(I)+RV02(I);
		if (IRC1 == 5) goto LBL_24;
		RV01(I+10-3)=pow(RV02(I),2);
		LV01(I)=RV01(I+10) > RV01(I+10-3);
		if (LV01(I)==1) goto LBL_22;
		RV01(I+10)=RV01(I+10)/4.0;
		ICODE=I*100+1;
		RV02(I)=RV01(I+10)*3.5-RV01(I+10)+QS01;
		IV02(I)=(long int)(RV01(I+10))*2+4;
		goto LBL_21;
LBL_24:
		;
		ICODE=I*100+4;
LBL_21:
		;
		if ((0 < IV02(I)) && (IV02(I) <= 10))
		{
			RV03(IV02(I))=sqrt(I/4.*I)*(float)(3)+QS01;
		}
		if (IRC1 != 5)
		{
			ICODE=I*100+2;
			goto LBL_20;
		}
LBL_22:
		;
		ICODE=I*100+3;
LBL_20:
		;
		IV01(I)=ICODE;
	}
	INIT(I3);
	exit (0);
}
int INIT(N)
long int N;
{
	long int NCWNR=8,CTR,I;
	if (N != 1)
	{
		printf("   ****  **** NO. %ld \n",N);
		CTR=0;
		printf(" RV01 =");
		for(I=1;I<=20;I++){
			printf(" %g",RV01(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" RV02 =");
		for(I=1;I<=10;I++){
			printf(" %g",RV02(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" LV01 =");
		for(I=1;I<=10;I++){
			printf(" %lu",LV01(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" IV01 =");
		for(I=1;I<=10;I++){
			printf(" %ld",IV01(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" IV02 =");
		for(I=1;I<=10;I++){
			printf(" %ld",IV02(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("       ");
			}
		}
		printf("\n");
	}
	else
	{
		for(I=1;I<=10;I++)
		{
LBL_1:
			;
			RV01(I)=3.;
		}
	}
	for(I=1;I<=10;I++)
	{
		LV01(I)=1;
		RV01(I+10)=(float)(12+I);
		IV02(I)=12+I;
LBL_10:
		;
		IV01(I)=0;
	}
	ICODE=0;
	IRC1=5;
	return 0;
}
