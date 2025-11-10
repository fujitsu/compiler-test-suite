#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int GENE();
int COMP();
int LIST();
int MASK();
int INIT(long int N);
#define DV1(i) com1.dv1[i-1]
#define DV2(i) com1.dv2[i-1]
#define RV1(i) com1.rv1[i-1]
#define RV2(i) com1.rv2[i-1]
#define LV1(i) com1.lv1[i-1]
#define LST(i) com1.lst[i-1]
struct com1rec { 
	double            dv1[10],dv2[10];
	float             rv1[10],rv2[10];
	long int          lv1[10];
	unsigned long int lst[10];        
} com1;
int main()
{
	long int I1=1,I2=2,I3=3,I4=4,I5=5;
	INIT(I1);
	MASK();
	INIT(I2);
	LIST();
	INIT(I3);
	COMP();
	INIT(I4);
	GENE();
	INIT(I5);
	exit (0);
}
int INIT(N)
long int N;
{
	long int NCWNR=8,CTR,I;
	if (N != 1)
	{
		printf("   ****  **** NO.%ld \n",N);
		CTR=0;
		printf(" DV1 =");
		for(I=1;I<=10;I++){
			printf(" %g",DV1(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" DV2 =");
		for(I=1;I<=10;I++){
			printf(" %g",DV2(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" RV1 =");
		for(I=1;I<=10;I++){
			printf(" %g",RV1(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" RV2 =");
		for(I=1;I<=10;I++){
			printf(" %g",RV2(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
		printf("\n");
		CTR=0;
		printf(" LV1 =");
		for(I=1;I<=10;I++){
			printf(" %ld",LV1(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
		printf("\n");
	}
	for(I=1;I<=10;I++)
	{
		LST(I)=I;
		LV1(I)=0;
		RV1(I)=(float)(I-4);
		RV2(I)=100.;
		DV1(I)=(double)(8-I);
LBL_10:
		;
		DV2(I)=100.;
	}
	return 0;
}
int MASK()
{
	unsigned long int LS;
	long int IS,I;
	float    S;
	IS=9;
	for(I=1;I<=10;I++)
	{
		S=0.;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			LV1(LST(I))=LS && RV2(I) > DV1(LST(I));
		}
		if (!(LS)==1)
		{
			RV2(I)=(float)(I*2.0);
			LV1(I)=!(LV1(I)) && DV1(I) == RV1(I);
			LV1(LST(I))=!(LV1(I)) && DV1(I) == RV1(I);
			DV1(I)=RV2(I)*4.+(float)(IS);
			S=DV1(I)*RV1(I);
			RV2(LST(I))=RV2(I)+S;
		}
		DV2(I)=S;
LBL_10:
		;
	}
	return 0;
}
int LIST()
{
	float S;
	unsigned long int LS;
	long int IS,I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		S=0;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			LV1(LST(I))=LS && RV2(LST(I)) > DV1(I);
		}
		if (!(LS)==1)
		{
			RV2(I)=(float)(I*2.0);
			LV1(LST(I))=!(LV1(I)) && DV1(I) == RV1(I);
			DV1(I)=RV2(I)*4.+(double)(IS);
			S=DV1(I)*RV1(I);
			RV2(LST(I))=RV2(I)+S;
		}
		DV2(I)=S;
LBL_10:
		;
	}
	return 0;
}
int COMP()
{
	float S;
	unsigned long int LS;
	long int IS,I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		S=0.;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			LV1(LST(I))=LS && RV2(LST(I)) > DV1(I);
		}
		if (!(LS)==1)
		{
			RV2(I)=(float)(I*2.0);
			LV1(LST(I))=!(LV1(I)) && DV1(I) == RV1(I);
			DV1(I)=RV2(I)*4.+(float)(IS);
			S=DV1(I)*RV1(I);
			RV2(LST(I))=RV2(I)+S;
		}
		DV2(I)=S;
LBL_10:
		;
	}
	return 0;
}
int GENE()
{
	float S;
	unsigned long int LS;
	long int IS,I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		S=0;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			LV1(LST(I))=LS && RV2(LST(I)) > DV1(I);
		}
		if (!(LS)==1)
		{
			RV2(I)=(float)(I*2.0);
			LV1(LST(I))=!(LV1(I)) && DV1(I) == RV1(I);
			DV1(I)=RV2(I)*4.+(float)(IS);
			S=DV1(I)*RV1(I);
			RV2(LST(I))=RV2(I)+S;
		}
		DV2(I)=S;
LBL_10:
		;
	}
	return 0;
}
