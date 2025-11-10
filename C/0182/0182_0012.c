#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I4A01(i) i4a01[i-1]
#define I4A02(i) i4a02[i-1]
#define I4A03(i) i4a03[i-1]
#define I4A04(i) i4a04[i-1]
#define R4A01(i) r4a01[i-1]
#define R4A02(i) r4a02[i-1]
#define R4A03(i) r4a03[i-1]
#define R4A04(i) r4a04[i-1]
#define R8A01(i) r8a01[i-1]
#define R8A02(i) r8a02[i-1]
#define R8A03(i) r8a03[i-1]
#define L1A01(i) l1a01[i-1]
#define L1A02(i) l1a02[i-1]
#define L1A03(i) l1a03[i-1]
#define L4A01(i) l4a01[i-1]
#define L4A02(i) l4a02[i-1]
#define L4A03(i) l4a03[i-1]
#define L4A04(i) l4a04[i-1]
#define C16A1(i) c16a1[i-1]
#define C16A2(i) c16a2[i-1]
long int i4a01[20],i4a02[20],i4a03[20],i4a04[20];
float    r4a01[20],r4a02[20],r4a03[20],r4a04[20];
double   r8a01[20],r8a02[20],r8a03[20];
unsigned char l1a01[20]={
	1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0};
unsigned char l1a02[20]={
	1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0};
unsigned char l1a03[20]={
	1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0};
unsigned long int l4a01[20]={
	0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1};
unsigned long int l4a02[20]={
	0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1};
unsigned long int l4a03[20]={
	0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1};
unsigned long int l4a04[20]={
	0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1};
COMPLEX16 c16a1[20],c16a2[20];
int main()
{
	long int  I4001=1,I4002=2,I4003=3,I4004=4,I4005=5;
	float     R4001=0,R4002=0,R4003=0,R4004=0,R4005=0;
	double    R8001=0,R8002=0,R8003=0,R8004=0,R8005=0;
	COMPLEX16 C1605={
		1.1,+1.0	};
	long int  I,i,J,j;
	for(i=0;i< 20;i++){
		i4a01[i]=1;
		i4a02[i]=2;
		i4a03[i]=3;
		i4a04[i]=4;
		r4a01[i]=1.1;
		r4a02[i]=2.2;
		r4a03[i]=3.3;
		r4a04[i]=4.4;
		r8a01[i]=3.0;
		r8a02[i]=4.0;
		r8a03[i]=5.0;
		c16a1[i].dreal=1.1;
		c16a1[i].dimag=1.0;
		c16a2[i].dreal=2.2;
		c16a2[i].dimag=-1.0;
	}
	for(I=1;I<=20;I+=2)
	{
		if (!L4A01(I))goto LBL_10         ;
		I4001=(I4001>I4A01(I)) ? I4001:I4A01(I);
		I4002=I4002+I4A01(I);
		R4001=(R4001>R4A01(I)) ? R4001:R4A01(I);
		R4002=R4002+R4A01(I);
		R8001=(R8001>R8A01(I)) ? R8001:R8A01(I);
		R8002=R8002+R8A01(I);
LBL_10:
		;
	}
	for(I=1;I<=20;I++)
	{
		if (!L1A01(I))goto LBL_11         ;
		I4003=(I4003>I4A02(I)) ? I4003:I4A02(I);
		I4004=I4004+I4A02(I);
		R4003=(R4003>R4A02(I)) ? R4003:R4A02(I);
		R4004=R4004+R4A02(I);
		R8003=(R8003>R8A02(I)) ? R8003:R8A02(I);
		R8004=R8004+R8A02(I);
LBL_11:
		;
	}
	printf(" **  (ITEM1-A) **\n");
	printf(" %ld %ld %ld %ld \n",I4001,I4002,I4003,I4004);
	printf(" %g %g %g %g \n",R4001,R4002,R4003,R4004);
	printf(" %g %g %g %g \n",R8001,R8002,R8003,R8004);
	I4001=0;
	I4002=0;
	I4003=0;
	R4001=0.0;
	R4002=0.0;
	R4003=0.0;
	R8001=0.0;
	R8002=0.0;
	R8003=0.0;
	for(I=1;I<=20;I++)
	{
		if (L4A01(I)==1)
		{
			if (L1A01(I) &&  L1A02(I))goto LBL_12         ;
			I4001=(I4001>I4A01(I)) ? I4001:I4A01(I);
			I4002=I4002+1;
			R4001=(R4001>R4A01(I)) ? R4001:R4A01(I);
			R4002=R4002+1;
		}
LBL_12:
		;
	}
	for(I=1;I<=20;I++)
	{
		if (L4A02(I)==1)
		{
			if (L1A01(I) &&  L1A03(I))goto LBL_13         ;
			I4003=(I4003>I4A02(I)) ? I4003:I4A02(I);
			I4004=I4004+1;
			R4003=(R4003>R4A02(I)) ? R4003:R4A02(I);
			R4004=R4004+1;
		}
LBL_13:
		;
	}
	printf("  ** ITEM1-B **\n");
	printf(" %ld %ld %ld %ld \n",I4001,I4002,I4003,I4004);
	printf(" %g %g %g %g \n",R4001,R4002,R4003,R4004);
	for(I=1;I<=20;I++)
	{
		if (L4A01(I)==1)goto LBL_20         ;
		I4001=(I4001>I4A01(I)) ? I4001:I4A01(I);
		I4A01(I)=I4002+I4A01(I);
		I4A01(I)=I4005+I4A01(I);
LBL_20:
		;
	}
	for(I=1;I<=20;I++)
	{
		if (L4A02(I)==1)goto LBL_21         ;
		I4001=(I4001>I4A02(I)) ? I4001:I4A02(I);
		I4A02(I)=I4002+I4A02(I);
		I4A02(I)=I4005+I4A02(I);
LBL_21:
		;
	}
	for(I=1;I<=20;I++)
	{
		if (L4A01(I)==1)goto LBL_22         ;
		I4003=(I4003>I4A01(I)) ? I4003:I4A01(I);
		I4A03(I)=I4004+I4A03(I);
		I4A03(I)=I4005+I4A01(I);
LBL_22:
		;
	}
	for(I=1;I<=20;I++)
	{
		if (L4A02(I)==1)goto LBL_23         ;
		I4004=(I4004>I4A04(I)) ? I4004:I4A04(I);
		I4A04(I)=I4003+I4A04(I);
		I4A04(I)=I4003+I4A04(I);
LBL_23:
		;
	}
	printf(" ** ITEM1-C **\n");
	printf(" %ld %ld %ld %ld \n",I4001,I4002,I4003,I4004);
	printf(" %g %g %g %g \n",R4001,R4002,R4003,R4004);
	for(i=1;i<=20;i++){
		printf(" %ld %ld %ld %ld \n",I4A01(i),I4A02(i),I4A03(i),I4A04(i));
	}
	for(I=1;I<=20;I++)
	{
		if (!L4A04(I))goto LBL_40         ;
		I4A01(I)=(I4A02(I)+I4002)-(I4A03(I)+I4003);
		I4001=(I4001>I4A01(I)) ? I4001:I4A01(I);
		I4A02(I)=(I4A02(I)-I4003)-(I4A04(I)-I4003);
		I4002=(I4002>I4A02(I)) ? I4002:I4A02(I);
		I4A03(I)=(I4A03(I)*R4001)+(I4A03(I)*I4003);
		R4A01(I)=R4A01(I)+R4005;
		R4001=(R4001>R4A01(I)) ? R4001:R4A01(I);
		R4A02(I)=R4A02(I)+R4A01(I);
		R4002=(R4002>R4A02(I)) ? R4002:R4A02(I);
		R8A01(I)=R8A01(I)+R8005;
		R8001=(R8001>R8A01(I)) ? R8001:R8A01(I);
		C16A1(I).dreal=C16A1(I).dreal+C1605.dreal;
		C16A1(I).dimag=C16A1(I).dimag+C1605.dimag;
LBL_40:
		;
	}
	printf(" ** ITEM2-A **\n");
	printf(" %ld %ld \n",I4001,I4002);
	printf(" %g %g \n",R4001,R4002);
	printf(" %g \n",R8001);
	for(i=1;i<=20;i++){
		printf(" %ld %ld %ld \n",I4A01(i),I4A02(i),I4A03(i));
		printf(" %g %g \n",R4A01(i),R4A02(i));
		printf(" %g %g %g \n",R8A01(i),C16A1(i).dreal,C16A1(i).dimag);
	}
	for(I=1;I<=20;I++)
	{
		if (!L4A03(I))goto LBL_41         ;
		I4A02(I)=(I4A02(I)+I4002)-(I4A03(I)+I4003);
		I4002=(I4002>I4A02(I)) ? I4002:I4A02(I);
		I4A03(I)=(I4A02(I)-I4003)-(I4A04(I)-I4003);
		I4003=(I4003>I4A03(I)) ? I4003:I4A03(I);
		I4A04(I)=(I4A03(I)*R4001)+(I4A03(I)*I4003);
		R4A02(I)=R4A02(I)+R4005;
		R4002=(R4002>R4A02(I)) ? R4002:R4A02(I);
		R4A03(I)=R4A02(I)+R4A01(I);
		R4003=(R4003>R4A03(I)) ? R4003:R4A03(I);
		R8A02(I)=R8A01(I)+R8005;
		R8002=(R8002>R8A02(I)) ? R8002:R8A02(I);
		C16A2(I).dreal=C16A1(I).dreal+C1605.dreal;
		C16A2(I).dimag=C16A1(I).dimag+C1605.dimag;
LBL_41:
		;
	}
	printf(" ** ITEM2-A **\n");
	printf(" %ld %ld \n",I4002,I4003);
	printf(" %g %g \n",R4002,R4003);
	printf(" %g \n",R8002);
	for(i=1;i<=20;i++){
		printf(" %ld ",I4A02(i));
		printf(" %g ",R4A02(i));
		printf(" %g \n",R8A02(i));
	}
	for(I=1;I<=20;I++)
	{
		if (L4A01(I)==1)goto LBL_50         ;
		if (I4A01(I) == I4A02(I))goto LBL_50         ;
		I4005=(I4005>I4A02(I)) ? I4005:I4A02(I);
		I4A01(I)=I4005*2;
		R4005=(R4005>R4A02(I)) ? R4005:R4A02(I);
		R4A01(I)=R4005*2;
		R8005=(R8005>R8A02(I)) ? R8005:R8A02(I);
		R8A01(I)=R8005*2;
		R4A02(I)=R4005/2;
LBL_50:
		;
	}
	for(I=1;I<=20;I++)
	{
		if (L4A02(I)==1)goto LBL_51         ;
		if (R4A01(I) >  R4A02(I))goto LBL_51         ;
		I4004=(I4004>I4A03(I)) ? I4004:I4A03(I);
		I4A02(I)=pow(I4004*2,2);
		R4004=(R4004>R4A03(I)) ? R4004:R4A03(I);
		R8004=(R8004>R8A03(I)) ? R8004:R8A03(I);
		R8A02(I)=pow(R8004*2,2);
		R4A01(I)=pow(R4004/2,2);
LBL_51:
		;
	}
	printf(" ** ITEM3-A **\n");
	printf(" %ld %g %g ",I4005,R4005,R8005);
	printf(" %ld %g %g \n",I4004,R4004,R8004);
	for(i=1;i<=20;i++){
		printf(" %ld %g %g %g ",I4A01(i),R4A01(i),R8A01(i),R4A02(i));
		printf(" %ld %g %g \n",I4A02(i),R8A02(i),R4A01(i));
	}
	exit (0);
}
