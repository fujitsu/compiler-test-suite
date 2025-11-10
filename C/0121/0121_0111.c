#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define EV30(i) ev30[i-1]
float ev10[10];
float dv20[200];
float ev30[64];
int main()
{
	long int ITR1,ITR2,I,J;
	int k;

	ITR1=J=10;
	ITR2=200;
	ev10[0]=ev10[9]=0.0;
	ev10[1]=ev10[2]=ev10[3]=1.0;
	for(k=4;k<=8;k++)ev10[k]=-2.5;
	for(k=0;k<31;k++){
		ev30[k]=1.5;
		ev30[k+31]=2.0;
	}
	ev30[62]=3.0;
	ev30[63]=1.75;
	dv20[0]=dv20[3]=dv20[151]=dv20[189]=1.0;
	dv20[9]=dv20[11]=dv20[64]=0.0;
	dv20[1]=dv20[138]=-1.0;
	dv20[2]=dv20[5]=2.0;
	dv20[193]=dv20[197]=36.0;
	dv20[7]=-2.0;
	for(k=0;k<200;k+=2){
		if((k>2)&&(k<64))dv20[k]=5.0;
		else if((k>64)&&(k<138))dv20[k]=4.0;
		else if((k>138)&&(k<200))dv20[k]=-3.0;
	}
	for(k=1;k<200;k+=4){
		if((k>9)&&(k<45))dv20[k]=5.0;
		else if((k>41)&&(k<189))dv20[k]=4.0;
	}
	for(k=3;k<200;k+=4){
		if((k>11)&&(k<127))dv20[k]=-5.0;
		else if((k>123)&&(k<151))dv20[k]=-4.0;
		else if((k>147)&&(k<200))dv20[k]=-3.0;
	}

	for(I=1;I<=ITR1;I++){
		if (EV10(I) != 0)break;
	}
	printf("    -LOOP.01 \n");
	for(I=2;I<=ITR2;I+=2){
		if (DV20(I) >  0){
			DV20(I)=sqrt(DV20(I));
			J+=3;
		}
	}
	printf("    -LOOP.02 \n");
	printf("    I=%ld   J=%ld\n",I,J);
	for(k=1;k<=200;k+=4){
		printf("DV20(%3d)=%f DV20(%3d)=%f DV20(%3d)=%f DV20(%3d)=%f\n",
		    k,DV20(k),k+1,DV20(k+1),k+2,DV20(k+2),k+3,DV20(k+3));
	}
	for(I=1;I<=64;I++)
	{
		if (sin(EV30(I)) <=  0){
			EV30(I)=sin(EV30(I));
			break;
		}
		else
			EV30(I)=cos(EV30(I));
	}
	printf("    -LOOP.03 \n");
	for(I=1;I<=64;I++){
		printf("EV30(%ld)=%f  I=%ld\n",I,EV30(I),I);
	}
	exit (0);
}
