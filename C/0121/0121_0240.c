#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int GENE();
int COMP();
int LIST();
int MASK();
int INIT(long int N);
#define QV1(i) com1.qv1[i-1]
#define DV1(i) com1.dv1[i-1]
#define DV2(i) com1.dv2[i-1]
#define RV1(i) com1.rv1[i-1]
#define LV1(i) com1.lv1[i-1]
#define RV2(i) com1.rv2[i-1]
#define RS01   com1.rs01
#define RS02   com1.rs02
#define RS03   com1.rs03
#define LST(i) com1.lst[i-1]
struct com1rec { 
	long double qv1[10];
	double      dv1[10],dv2[10];
	float       rv1[10],rv2[10];
	unsigned long int lv1[10];
	long int    lst[10];
	float       rs01,rs02,rs03; 
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
	long int I,NCWNR=8,CWNR=8,CTR;
	if (N != 1)
	{
		printf("   ****  **** NO. %ld \n",N);
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
			printf(" %lu",LV1(I));
			CTR++;
			if (CTR%NCWNR==0)
			{
				printf("\n");
				printf("      ");
			}
		}
		printf("\n");
		printf(" RS01= %g\n",RS01);
		printf(" RS02= %g\n",RS02);
		printf(" RS03= %g\n",RS03);
	}
	for(I=1;I<=10;I++)
	{
		LST(I)=I;
		LV1(I)=0;
		RV1(I)=(float)(I-4);
		RV2(I)=100.;
		DV1(I)=(double)(8-I);
		DV2(I)=100.;
LBL_10:
		;
		QV1(I)=(long double)(8-I);
	}
	RS02=0.;
	RS03=0.;
	return 0;
}
int MASK()
{
	unsigned long int LS;
	long int IS;
	long int I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		RS01=0.;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			RS02=(DV1(I) > RS02) ? DV1(I):RS02;
			IS=1;
			LV1(LST(I))=LS && RV2(I) > DV1(LST(I));
		}
		if (!LS==1)
		{
			RV2(I)=(float)(I)*2.0;
			LV1(I)=!LV1(I) && DV1(I) == RV1(I);
			if (LV1(I) && !LS == 1 )
			{
				LV1(LST(I))=!LV1(I) && QV1(I) == RV1(I);
				IS=2;
				DV1(I)=RV2(I)*4.+(double)(IS);
			}
			else
			{
				IS=3;
			}
			RV2(I)=RV2(I)*3.;
			RS01=QV1(I)*RV1(I);
			RS03=RV2(LST(I))+RS03+(float)(DV1(I))+RV1(I);
			RV2(LST(I))=RV2(I)+RS01;
		}
		DV2(I)=RS01;
LBL_10:
		;
	}
	return 0;
}
int LIST()
{
	unsigned long int LS;
	long int IS;
	long int I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		RS01=0.;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			RS02=(DV1(I) > RS02) ? DV1(I):RS02;
			IS=1;
			LV1(LST(I))=LS && RV2(I) > DV1(LST(I));
		}
		if (!LS==1)
		{
			RV2(I)=(float)(I)*2.0;
			LV1(I)=!(LV1(I)) && DV1(I) == RV1(I);
			if (LV1(I) && !(LS) == 1)
			{
				LV1(LST(I))=!(LV1(I)) && QV1(I) == RV1(I);
				IS=2;
				DV1(I)=RV2(I)*4.+(float)(IS);
			}
			else
			{
				IS=3;
			}
			RV2(I)=RV2(I)*3.;
			RS01=QV1(I)*RV1(I);
			RS03=RV2(LST(I))+RS03+(float)(DV1(I))+RV1(I);
			RV2(LST(I))=RV2(I)+RS01;
		}
		DV2(I)=RS01;
LBL_10:
		;
	}
	return 0;
}
int COMP()
{
	unsigned long int LS;
	long int IS;
	long int I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		RS01=0.;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			RS02=(DV1(I) > RS02)?  DV1(I):RS02;
			IS=1;
			LV1(LST(I))=LS && RV2(I) > DV1(LST(I));
		}
		if (!LS==1)
		{
			RV2(I)=(float)(I)*2.0;
			LV1(I)=!(LV1(I)) && DV1(I) == RV1(I);
			if (LV1(I) && !LS==1)
			{
				LV1(LST(I))=!LV1(I) && QV1(I) == RV1(I);
				IS=2;
				DV1(I)=RV2(I)*4.+(double)(IS);
			}
			else
			{
				IS=3;
			}
			RV2(I)=RV2(I)*3.;
			RS01=QV1(I)*RV1(I);
			RS03=RV2(LST(I))+RS03+(float)(DV1(I))+RV1(I);
			RV2(LST(I))=RV2(I)+RS01;
		}
		DV2(I)=RS01;
LBL_10:
		;
	}
	return 0;
}
int GENE()
{
	unsigned long int LS;
	long int IS;
	long int I;
	IS=9;
	for(I=1;I<=10;I++)
	{
		RS01=0.;
		LS=DV1(I)>=RV1(I);
		if (LS==1)
		{
			RV2(LST(I))=DV1(I)+RV1(I);
			RS02=(DV1(I) > RS02) ? DV1(I):RS02;
			IS=1;
			LV1(LST(I))=LS && RV2(I) > DV1(LST(I));
		}
		if (!LS==1)
		{
			RV2(I)=(float)(I)*2.0;
			LV1(I)=!(LV1(I)) && DV1(I) == RV1(I);
			if (LV1(I) && !LS == 1)
			{
				LV1(LST(I))=!(LV1(I)) && QV1(I) == RV1(I);
				IS=2;
				DV1(I)=RV2(I)*4.+(float)(IS);
			}
			else
			{
				IS=3;
			}
			RV2(I)=RV2(I)*3.;
			RS01=QV1(I)*RV1(I);
			RS03=RV2(LST(I))+RS03+(float)(DV1(I))+RV1(I);
			RV2(LST(I))=RV2(I)+RS01;
		}
		DV2(I)=RS01;
LBL_10:
		;
	}
	return 0;
}
