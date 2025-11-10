#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define RC(i) rc[i-1]
#define DD(i,j,k) dd[i-1][j-1][k-1]
float rc[10];
double dd[10][10][10];
int main()
{
	long int i,k,j,I1,I2,I3,ID2,ID3;
	float  RMIN,RMX;
	double DIF;
	for(i=1;i<=10;i++){
		RC(i)=1.0;
	}
	for(k=1;k<=10;k++){
		for(j=1;j<=10;j++){
			for(i=1;i<=10;i++){
				DD(i,j,k)=1.0;
			}
		}
	}
	RMIN=0.;
	j=0;
	for(I3=2;I3<=8;I3++)
	{
		DIF=RMIN-RC(I3);
		if (DIF>0.0)
		{
LBL_32:
			;
			RMIN=RC(I3);
			j=I3;
		}
LBL_30:
		;
	}
	printf(" ***  ** SFGC.2 **\n");
	printf(" RMIN= %g  J= %ld\n",RMIN,j);
	I1=3;
	I2=8;
	ID2=1;
	ID3=8;
	RMIN=0.0;
	RMX=0.0;
	j=0;
	for(I3=2;I3<=8;I3++)
	{
		DIF=RMIN-RC(I3);
		RMX=(RMX>DD(I1,I2,ID3)) ? RMX:DD(I1,I2,ID3);
		RMX=(RMX>RC(ID3)) ? RMX:RC(ID3);
		ID3=ID3-1;
		if ( DIF>0 ){
LBL_132:
			;
			RMIN=RC(I3);
			j=I3;
		}
LBL_130:
		;
	}
	printf(" ***  ** SFGC.2 **\n");
	printf(" RMIN= %g J= %ld\n",RMIN,j);
	printf(" RMX= %g \n",RMX);
	exit (0);
}
