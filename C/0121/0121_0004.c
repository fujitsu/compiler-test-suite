#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define R4A(i) r4a[i+9]
#define R8A(i) r8a[i+9]
#define L4A(i) l4a[i+9]
#define R4B(i) r4b[i+9]
#define R8B(i) r8b[i+9]
#define C8B(i) c8b[i+9]
#define C16B(i) c16b[i+9]
float     r4a[20];
double    r8a[20];
unsigned  long int l4a[20]={
	1,1,1,1,1,0,0,0,0,0,
	                             1,1,1,1,1,2,3,4,5,6};
float     r4b[20];
double    r8b[20];
COMPLEX8  c8b[20];
COMPLEX16 c16b[20];
int main()
{
	long int I,i,I1,ID1,J1=2,J2=3;
	long int IN=20,I2;
	long int I3;
	float RSUM=0.0,RMAX=100.,RST;
	long int ID=1;
	long int J3=1;
	long int ID3=-5;
	for(i=0;i< 20;i++){
		r4a[i]=1.0;
		r8a[i]=2.0;
		r4b[i]=1.;
		r8b[i]=0.;
		c8b[i].real=1.;
		c8b[i].imag=1.;
		c16b[i].dreal=0.;
		c16b[i].dimag=1.;
	}
	ID=0;
	for(I1=-J1*J2*J3-J2*J3;I1<=0;I1+=1)
	{
		ID=ID+1;
		if (L4A(I1) &&  L4A(I1+1))
		{
			L4A(I1)=0;
			R4A(I1)=R4A(I1+1);
		}
		if (L4A(I1))goto LBL_10         ;
		R8A(ID)=(int)(5.*sin(R4A(I1)+ID));
		if (R8A(ID) >  4.)
		{
			R8A(ID)=R8A(ID)*R8A(ID);
			R4A(I1)=R4A(I1)*R4A(I1);
		}
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" R8A= %g \n",R8A(i));
		printf(" R4A= %g \n",R4A(i));
	}
	ID=-5;
	for(I2=-J2*J1;I2<=J1*J1+J3+J2*J3;I2+=J1*J2+J1-J2)
	{
		ID=ID+1;
		if ((!L4A(ID)) || (L4A(I2)))
		{
			R8B(I2)=R8A(ID);
			R4B(I2)=R4A(ID);
			if (R8A(ID) <= 3.)
			{
				R8B(I2)=R8A(ID)*2.0;
				R4B(I2)=R4A(ID)*4.0;
				if (R8A(ID) <= 0.)
				{
					C8B(I2).real=R4A(ID);
					C8B(I2).imag=R4B(I2);
					C16B(I2).dreal=R8A(ID);
					C16B(I2).dimag=R8B(I2);
				}
			}
		}
LBL_20:
		;
	}
	for(i=1;i<=10;i++){
		printf(" C8B= %g %g \n",C8B(i).real,C8B(i).imag);
		printf(" C16B= %g %g \n",C16B(i).dreal,C16B(i).dimag);
	}
	for(I3=-J3*J1-1;I3<=J2*J3+J1;I3++)
	{
		printf(" I3 = %ld \n",I3);
		if (RMAX <  R4A(I3))
		{
			RMAX=R4A(I3);
		}
		ID3=ID3+J2*J3-J1;
		RST=R4A(ID3)+R4B(I3);
		RSUM=RSUM+RST;
LBL_30:
		;
	}
	printf(" RMAX= %g \n",RMAX);
	printf(" RSUM= %g \n",RSUM);
	exit (0);
}
