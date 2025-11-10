#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define A(i)  a[i-1]
#define B(i)  b[i-1]
#define C(i)  c[i-1]
#define Q(i)  q[i-1]
#define LA(i) la[i-1]
#define LB(i) lb[i-1]
float       a[10]={
	0,1,2,2,1,0,0,0,0,0},
b[10]={
	0,0,0,0,0,0,0,0,0,0},
c[10]={
	1,2,3,4,5,6,7,8,9,10};
long double q[10]={
	0,1,2,2,1,0,0,0,0,0};
unsigned long int la[10];
unsigned char lb[10];
int main()
{
	long int J,I,i,j;
	for(i=0;i< 10;i++)
	{
		la[i]=(i<6)?1:0;
		lb[i]=(i<6)?1:0;
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(I) ){
			if((A(I)-1.0) <  0)goto LBL_10;
			if((A(I)-1.0) == 0)goto LBL_20;
			goto LBL_30;
		}
LBL_20:
		;
		B(I)=C(I);
		goto LBL_10;
LBL_30:
		;
		B(I)=C(I)/2.0;
LBL_10:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(I) ){
			if ((A(I)-1.0) <  0)goto LBL_40;
			if ((A(I)-1.0) == 0)goto LBL_50;
			goto LBL_60;
		}
LBL_50:
		;
		B(I)=C(I);
		goto LBL_40;
LBL_60:
		;
		B(I)=C(I)/2.0;
LBL_40:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(I) ){
			if ((A(I)-1.0) <  0)goto LBL_70;
			if ((A(I)-1.0) == 0)goto LBL_80;
			goto LBL_90;
		}
LBL_80:
		;
		B(I)=C(I);
		goto LBL_70;
LBL_90:
		;
		B(I)=C(I)*2.0;
LBL_70:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(I) ){
			if ((A(I)-1.0) <  0)goto LBL_100;
			if ((A(I)-1.0) == 0)goto LBL_110;
			goto LBL_120;
		}
LBL_110:
		;
		B(I)=C(I);
		goto LBL_100;
LBL_120:
		;
		B(I)=C(I)-2.0;
LBL_100:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	J=5;
	for(I=1;I<=10;I++)
	{
		if ( LA(J) ){
			if ((A(I)-1.0) <  0)goto LBL_130;
			if ((A(I)-1.0) == 0)goto LBL_140;
			goto LBL_150;
		}
LBL_140:
		;
		B(I)=C(I);
		goto LBL_130;
LBL_150:
		;
		B(I)=C(I)+2.0;
LBL_130:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(I) ){
			if ((A(I)-1.0) <  0)goto LBL_160;
			if ((A(I)-1.0) == 0)goto LBL_170;
			goto LBL_180;
		}
LBL_170:
		;
		B(I)=C(I);
		goto LBL_160;
LBL_180:
		;
		B(I)=C(I)*2.0;
LBL_160:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(J) ){
			if ((A(I)-1.0) <  0)goto LBL_161;
			if ((A(I)-1.0) == 0)goto LBL_171;
			goto LBL_181;
		}
LBL_171:
		;
		B(I)=C(I);
		goto LBL_161;
LBL_181:
		;
		B(I)=C(I)*2.0;
LBL_161:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(J) ){
			if ((A(I)-1.0) <  0)goto LBL_162;
			if ((A(I)-1.0) == 0)goto LBL_172;
			goto LBL_182;
		}
LBL_172:
		;
		B(I)=C(I);
		goto LBL_162;
LBL_182:
		;
		B(I)=C(I)*2.0;
LBL_162:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(I) ){
			if ((A(I)-1.0) <  0)goto LBL_163;
			if ((A(I)-1.0) == 0)goto LBL_173;
			goto LBL_183;
		}
LBL_173:
		;
		B(I)=C(I);
		goto LBL_163;
LBL_183:
		;
		B(I)=C(I)*2.0;
LBL_163:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LA(J) ){
			if ((A(I)-1.0) <  0)goto LBL_164;
			if ((A(I)-1.0) == 0)goto LBL_174;
			goto LBL_184;
		}
LBL_174:
		;
		B(I)=C(I);
		goto LBL_164;
LBL_184:
		;
		B(I)=C(I)*2.0;
LBL_164:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( LB(I) ){
			if ((A(I)-1.0) <  0)goto LBL_165;
			if ((A(I)-1.0) == 0)goto LBL_175;
			goto LBL_185;
		}
LBL_175:
		;
		B(I)=sin(C(I));
		goto LBL_165;
LBL_185:
		;
		B(I)=pow(C(I),2.0);
LBL_165:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	for(I=1;I<=10;I++)
	{
		if ( A(I) >  B(I) ){
			if ((Q(I)-1.0) >  0)goto LBL_166;
			if ((Q(I)-1.0) == 0)goto LBL_176;
			goto LBL_186;
		}
LBL_176:
		;
		B(I)=sin(C(I));
		goto LBL_166;
LBL_186:
		;
		B(I)=pow(C(I),2.0);
LBL_166:
		;
	}
	for(i=1;i<=10;i++){
		printf(" %g \n",B(i));
	}
	exit (0);
}
