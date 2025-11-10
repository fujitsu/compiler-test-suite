#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R4A(i) r4a[i+9]
#define R4B(i) r4b[i+9]
#define L4A(i) l4a[i+9]
float RFUN1();
float RFUN2();
float RFUN3();
float RFUN4();
float r4a[20],r4b[20];
unsigned long int l4a[20]={
	1,1,1,1,1,0,0,0,0,0,
	                            1,1,1,1,1,0,0,0,0,0};
int main()
{
	long  int IDA,J1=1,J2=2,J3=3,J4=4;
	long  int IDB=1;
	float RSUM=0.;
	long  int I0,I1,I2,I3,i,j,I,J;
	float RA,RB;
	for(i=0;i< 20;i++){
		r4a[i]=1.0;
		r4b[i]=2.;
	}
	for(I0=1;I0<=10;I0++)
	{
		IDA=-J3*J2-J3;
		for(I1=-J3*J2-J1;I1<=J2*J1*J3+J3*J1;I1+=2)
		{
			IDA=IDA+1;
			R4A(IDA)=R4A(IDA+1)*R4B(I1);
			if (I1 <  IDA)
			{
				R4B(I1)=RFUN1(R4A(IDA),R4B(IDA),R4A(IDA+1))+
				    RFUN2(R4A(IDA),R4B(IDA),R4A(IDA+1))+
				    RFUN3(R4A(IDA),R4B(IDA),R4A(IDA+1));
				for(i=1;i<=20;i++){
					printf("R4B( %ld )= %g \n",I1,R4B(i));
				}
			}
LBL_10:
			;
		}
		IDB=(int)(RFUN1((float)(-J1),(float)(-J2),(float)(-J3)));
		for(I2=-5;I2<=J1*J2+J3+J3;I2+=J1*J2-J1)
		{
			RSUM=RSUM+RFUN4(R4A(I2),R4A(IDB),R4B(I2));
			IDB=IDB+(int)(RFUN3((float)(J3),(float)(J1),(float)(J2)));
			if (L4A(I2)==1)
			{
				printf(" RSUM= %g ,I2= %ld \n",RSUM,I2);
			}
			if  (RFUN1((float)(J1),(float)(J2),(float)(J3)) >
			    RFUN2((float)(J1),(float)(J2),(float)(J3)))
			{
				R4A(I2)=RSUM+RFUN3(R4B(I2),R4B(I2+1),R4B(I2-1));
			}
LBL_20:
			;
		}
		printf(" RSUM= %g \n",RSUM);
		if (IDB <= 6)
		{
			for(I3=IDB;I3<10;I3++)
			{
				R4A(I3)=R4A(I3)+RSUM;
LBL_30:
				;
			}
		}
LBL_100:
		;
	}
	exit (0);
}

float RFUN1(RA,RB,RC)
float RA,RB,RC;
{
	return RA+RB+RC;
}
float RFUN2(RA,RB,RC)
float RA,RB,RC;
{
	return RA+RB+RC;
}
float RFUN3(RA,RB,RC)
float RA,RB,RC;
{
	return RA-RB*RC;
}
float RFUN4(RA,RB,RC)
float RA,RB,RC;
{
	float RY;
	RY=(RA+RB)/2.0;
	RY=RY*8.0+RC;
	RY=RY+RY*RC;
	return RY;
}
 
