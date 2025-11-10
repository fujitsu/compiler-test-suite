#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define I4A01(i) i4a01[i-1]
#define I4A02(i) i4a02[i-1]
#define I4A03(i) i4a03[i-1]
#define I4A04(i) i4a04[i-1]
#define I4A05(i) i4a05[i-1]
#define R4A01(i) r4a01[i-1]
#define R4A02(i) r4a02[i-1]
#define R4A03(i) r4a03[i-1]
#define R4A04(i) r4a04[i-1]
#define R4A05(i) r4a05[i-1]
#define R8A01(i) r8a01[i-1]
#define R8A02(i) r8a02[i-1]
#define R8A03(i) r8a03[i-1]
#define R8A04(i) r8a04[i-1]
#define R8A05(i) r8a05[i-1]
#define L4A01(i) l4a01[i-1]
#define C16A1(i) c16a1[i-1]
#define C16A2(i) c16a2[i-1]
#define C16A3(i) c16a3[i-1]
#define C16A4(i) c16a4[i-1]
#define C16A5(i) c16a5[i-1]
long int  i4a01[20],i4a02[20],i4a03[20],i4a04[20],i4a05[20];
float     r4a01[20],r4a02[20],r4a03[20],r4a04[20],r4a05[20];
double    r8a01[20],r8a02[20],r8a03[20],r8a04[20],r8a05[20];
unsigned  long int l4a01[20];
COMPLEX16 c16a1[20],c16a2[20],c16a3[20],c16a4[20],c16a5[20];
int main()
{
	long int  I4001=1,I4002=2,I4003=1,I4004=1,I4005=1;
	float     R4001=1.,R4002=2.,R4003=3.,R4004=4.,R4005=5.;
	double    R8001=1.,R8002=2.,R8003=3.,R8004=4.,R8005=5.;
	COMPLEX16 C1601={
		1.0,+1.0	},
	C1602={
		1.0,1.0	},
	C1603={
		1.0,1.0	};
	long int  INDEX=20;
	long int J,I,i,j;
	for(i=0;i< 20;i++){
		i4a01[i]=1;
		i4a02[i]=1;
		i4a03[i]=1;
		i4a04[i]=1;
		i4a05[i]=1;
		r4a01[i]=1.0;
		r4a02[i]=1.0;
		r4a03[i]=1.;
		r4a04[i]=2.;
		r4a05[i]=3.;
		r8a01[i]=1.0;
		r8a02[i]=1.0;
		r8a03[i]=1.;
		r8a04[i]=2.;
		r8a05[i]=3.;
		l4a01[i]=0;
		c16a1[i].dreal=1.0;
		c16a1[i].dimag=1.0;
		c16a2[i].dreal=1.0;
		c16a2[i].dimag=1.0;
		c16a3[i].dreal=1.;
		c16a3[i].dimag=2.;
		c16a4[i].dreal=2.;
		c16a4[i].dimag=3.;
		c16a5[i].dreal=3.;
		c16a5[i].dimag=4.;
	}
	for(J=1;J<=INDEX;J++)
	{
		for(I=1;I<=INDEX;I++)
		{
			I4005=I4003+I4A03(I)+I4A02(I);
			I4001=I4001+I4A01(I);
			I4A02(I)=I4005;
			R4004=R4003+R4A03(I)+R4A02(I);
			R4001=R4001+R4A01(I);
			R4A02(I)=R4005;
			R8004=R8003+R8A03(I)+R8A02(I);
			R8001=R8001+R8A01(I);
LBL_11:
			;
		}
LBL_10:
		;
	}
	for(J=1;J<=INDEX;J+=3)
	{
		for(I=1;I<=INDEX;I++)
		{
			if (L4A01(I)==1)
			{
				I4004=I4004+(I4A02(I)+I4A03(I));
				I4002=I4002+1;
				I4A03(I)=I4004;
				R4004=R4004+(R4A02(I)+R4A03(I));
				R4002=R4002+1;
				R4A03(I)=R4004;
				R8004=R8004+(R8A02(I)+R8A03(I));
				R8002=R8002+1;
				R8A03(I)=R8004;
			}
LBL_13:
			;
		}
LBL_12:
		;
	}
	for(J=1;J<=INDEX;J+=20)
	{
		for(I=1;I<=INDEX;I++)
		{
			I4003=I4003+I4A02(I);
			I4004=(I4004+I4A02(I))+(I4005+I4A03(I));
			R4003=R4003+R4A03(I)+R4A02(I);
			R4004=(R4004+R4A02(I))+(R4005+R4A03(I));
			R8003=R8003+R8A03(I)+R8A02(I);
			R8004=(R8001+R8A02(I))-(R8001+R8A02(I));
			I4A05(I)=I4003;
LBL_15:
			;
		}
LBL_14:
		;
	}
	printf("  **  (ITEM1-A) **\n");
	printf(" %ld %ld %g %g %g %g \n",I4005,I4001,R4004,R4001,R8004,R8001);
	printf(" %ld %ld %g %g \n",I4004,I4002,R4002,R8002);
	for(i=1;i<=20;i++){
		printf(" %ld %g ",I4A02(i),R4A02(i));
		printf(" %ld %g %g \n",I4A03(i),R4A03(i),R8A03(i));
	}
	printf(" %ld %ld %g %g %g %g \n",I4003,I4004,R4003,R4004,R8003,R8004);
	R4003=3.;
	for(J=1;J<=INDEX;J+=10)
	{
		for(I=1;I<=INDEX;I++)
		{
			I4005=I4A05(I)+1;
			I4001=I4001+abs(I4A01(I));
			R4005=R4A05(I)+1;
			R4001=R4001+fabs(R4A01(I));
			R8005=R8A05(I)+1;
			R8001=R8001+fabs(R8A01(I));
			I4002=I4003+abs(I4A01(I)+I4005);
			R4002=R4003+fabs(R4A01(I)+R4005);
			R8002=R8003+fabs(R8A01(I)+R8005);
LBL_21:
			;
		}
LBL_20:
		;
	}
	for(J=1;J<=INDEX;J+=5)
	{
		for(I=1;I<=INDEX;I+=2)
		{
			if (L4A01(I)==1)
			{
				I4A03(I)=sin(R4A02(I));
				I4002=I4002+1;
				R4A03(I)=I4A02(I)+fabs(R4001);
				R4002=R4002+1;
				R8A03(I)=R8A02(I);
				R8002=R8002+1;
				R4A05(I)=R4A02(I)*1+R4A04(I)+pow(R8A02(I),2);
				I4A05(I)=I4002;
			}
LBL_23:
			;
		}
LBL_22:
		;
	}
	printf(" ** ITEM1-B **\n");
	printf(" %ld %g %g %g %g %ld %g %g \n",I4001,R4005,R4001,R8005,
	    R8001,I4002,R4002,R8002);
	printf(" %ld %g %g \n",I4002,R4002,R8002);
	for(i=1;i<=20;i++){
		printf(" %ld %g %g %g %ld \n",
		    I4A03(i),R4A03(i),R8A03(i),R4A05(i),I4A05(i));
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=INDEX;I++)
		{
			I4001=I4A01(I)+I4A02(I)+I4001;
			I4A01(I)=(I4002+I4A02(I))+(I4002*I4A03(I));
			I4A05(I)=(I4003-I4A03(I))-(I4003*I4A04(I));
			R4A01(I)=(R4002+R4A03(I))*(R4A02(I)+I4001);
			R4A05(I)=(R4003*R4A03(I))-(R4003-R4A04(I));
			R8A01(I)=(R8002+R8A02(I))-(R8003+R8A04(I));
			C16A1(I).dreal=(C1602.dreal+C16A2(I).dreal)+
			    (C1603.dreal-C16A4(I).dreal);
			C16A1(I).dimag=(C1602.dimag+C16A2(I).dimag)+
			    (C1603.dimag-C16A4(I).dimag);
LBL_31:
			;
		}
LBL_30:
		;
	}
	printf(" **  (ITEM2-A) **\n");
	printf(" %ld \n",I4001);
	for(i=1;i<=20;i++){
		printf(" %ld %ld %g %g %g %g %g \n",I4A01(i),I4A05(i),R4A01(i),
		    R4A05(i),R8A01(i),C16A1(i).dreal,
		    C16A1(i).dimag);
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=INDEX;I++)
		{
			I4A01(I)=I4A02(I)+I4001-I4A02(I);
			I4A02(I)=I4A03(I)-I4002+I4A03(I);
			if (I4A01(I) <  I4A02(I))goto LBL_33         ;
			I4005=I4A01(I)+I4A02(I);
			R4A01(I)=R4A02(I)+R4001-R4A02(I);
			R4A02(I)=R4A03(I)-R4002+R4A03(I);
			if (I4005 <= R4A02(I) &&  I4A02(I) <= I4005)goto LBL_33         ;
			R4005=R4A01(I)-R4A02(I);
			R8A01(I)=R8A02(I)+R8001-R8A02(I);
			R8A02(I)=R8A03(I)-R8002+R8A03(I);
			if (R4005 >  R8A01(I) &&  R8A02(I) >  0.0)goto LBL_33         ;
			R8005=R8A01(I)-R8A02(I);
LBL_33:
			;
		}
LBL_32:
		;
	}
	printf(" **  (ITEM2-B) **\n");
	printf(" %ld \n",I4005);
	printf(" %g \n",R4005);
	printf(" %g \n",R8005);
	for(i=1;i<=20;i++){
		printf(" %ld %ld \n",I4A01(i),I4A02(i));
		printf(" %g %g \n",R4A01(i),R4A02(i));
		printf(" %g %g \n",R8A01(i),R8A02(i));
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=INDEX;I+=2)
		{
			I4A01(I)=I4001+R4A01(I)-R4001;
			I4001=I4A01(I);
			I4A05(I)=(I4A04(I)*2)-(I4A05(I)*2);
			R4A05(I)=(R4A04(I)*2)-(R4A05(I)*2);
			R8A05(I)=(R8A04(I)*2)-(R8A05(I)*2);
			C16A5(I).dreal=(C16A4(I).dreal*2)-(C16A5(I).dreal*2);
			C16A5(I).dimag=(C16A4(I).dimag*2)-(C16A5(I).dimag*2);
			R4A04(I)=R4001+R4A02(I);
			R8A04(I)=R8001+R8A02(I);
			C16A4(I).dreal=C1601.dreal+C16A2(I).dreal;
			C16A4(I).dimag=C1601.dimag+C16A2(I).dimag;
LBL_41:
			;
		}
LBL_40:
		;
	}
	printf(" ** (ITEM3-A) **\n");
	for(i=1;i<=20;i++){
		printf(" %ld %g %g %g %g \n",I4A05(i),R4A05(i),R8A05(i),
		    C16A5(i).dreal,C16A5(i).dimag);
		printf(" %ld %g %g %g %g \n",I4A04(i),R4A04(i),R8A04(i),
		    C16A4(i).dreal,C16A4(i).dimag);
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=INDEX;I+=2)
		{
			I4A01(I)=I4001+R4A01(I)-R4001;
			I4001=I4A01(I);
			I4A03(I)=(I4A03(I)*2)-(I4A05(I)*2);
			R4A03(I)=(R4A03(I)*2)-(R4A05(I)*2);
			R8A03(I)=(R8A03(I)*2)-(R8A05(I)*2);
			C16A3(I).dreal=(C16A3(I).dreal*2)-(C16A5(I).dreal*2);
			C16A3(I).dimag=(C16A3(I).dimag*2)-(C16A5(I).dimag*2);
			R4A02(I)=R4001+R4A02(I);
			R8A02(I)=sin(R8001+R8A02(I));
LBL_43:
			;
		}
LBL_42:
		;
	}
	printf(" ** (ITEM3-B) **\n");
	for(i=1;i<=20;i++){
		printf(" %ld ",I4A02(i));
		printf(" %g ",R4A02(i));
		printf(" %g ",R8A02(i));
		printf(" %g %g \n",C16A2(i).dreal,C16A2(i).dimag);
		printf(" %ld ",I4A03(i));
		printf(" %g ",R4A03(i));
		printf(" %g ",R8A03(i));
		printf(" %g %g \n",C16A3(i).dreal,C16A3(i).dimag);
	}
LBL_600:
	;
LBL_601:
	;
LBL_602:
	;
	exit (0);
}
