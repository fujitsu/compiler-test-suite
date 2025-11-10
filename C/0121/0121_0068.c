#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB();
#define RO(i,j) ro[i-1][j-1]
#define DMS(i) dms[i-1]
#define DMZ(i) dmz[i-1]
#define RM(i) rm[i-1]
#define UT(i,j) ut[i-1][j-1]
#define VT(i,j) vt[i-1][j-1]
#define U(i,j) u[i-1][j-1]
#define V(i,j) v[i-1][j-1]
double ro[20][20],dms[20],dmz[20],rm[20];
double ut[20][20],vt[20][20],u[20][20],v[20][20];
double UMAX,VMAX,DR,DZ,VMI,HMMIN;
long int JMAX,IMAX,I,J;
int main()
{
	UMAX=0.0;
	VMAX=0.0;
	DR=1.0;
	DZ=2.0;
	VMI=3.0;
	HMMIN=4.0;
	JMAX=20;
	IMAX=20;
	for(J=1;J<=JMAX;J++){
		DMS(J)=DR;
		RM(J)=DZ;
		DMZ(J)=(double)(J);
		for(I=1;I<=IMAX;I++){
			RO(I,J)=(double)(I);
			UT(I,J)=DMZ(J);
			VT(I,J)=DR+HMMIN;
			U(I,J)=DZ;
			V(I,J)=DR+DZ;
LBL_10:
			;
		}
	}
	JMAX=JMAX-2;
	IMAX=IMAX-2;
	SUB();
	printf("UMAX=%g VMAX=%g ",UMAX,VMAX);
        printf("\n");
	exit (0);
}
int SUB()
{
	double ZR1;
	for(J=1;J<=JMAX;J++){
		for(I=1;I<=IMAX;I++){
			if (RO(I,J) <  HMMIN)goto LBL_20;
			ZR1=DMS(I);
			ZR1=((ZR1 < DZ*DMZ(J)*RM(I+1)) ? ZR1:DZ*DMZ(J)*RM(I+1))*DR;
			UT(I,J)=(UT(I,J)-U(I,J))*VMI+U(I,J);
			VT(I,J)=(VT(I,J)-V(I,J))*VMI+V(I,J);
			VMAX=(VMAX>fabs(VT(I,J))/ZR1) ? VMAX:fabs(VT(I,J))/ZR1;
			UMAX=(VMAX>fabs(UT(I,J))/ZR1) ? VMAX:fabs(UT(I,J))/ZR1;
			VMAX=(VMAX>fabs(V(I,J))/ZR1) ? VMAX:fabs(V(I,J))/ZR1;
			UMAX=(VMAX>fabs(U(I,J))/ZR1) ? VMAX:fabs(U(I,J))/ZR1;
LBL_20:
			;
		}
	}
	return 0;
}
