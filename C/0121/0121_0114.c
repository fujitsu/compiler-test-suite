#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
#define ITR1(i) itr1[i-1]
#define EV10(i) ev10[i-1]
#define DV20(i) dv20[i-1]
#define ITR3(i) itr3[i-1]
#define EV30(i) ev30[i-1]
#define EV31(i) ev31[i-1]
long int itr1[2];
float ev10[100];
float dv20[100];
long int itr3[2];
float ev30[64],ev31[64];
int main()
{
	int a,b,i,j,k,c;
	long int IS10=200,L;
	float ES30=0,IS20;
	for(i=0;i<100;i+=2){
		dv20[i]=0.5;
	}
	for(i=1;i<100;i+=2){
		dv20[i]=10.0;
	}
	itr1[0]=100;
	itr1[1]=0;
	for(i=0;i<100;i++){
		if(i<=10)  ev10[i]=0.0;
		else if(i==11)  ev10[i]=15.0;
		else if(i>=12 && i<=41)  ev10[i]=1.5;
		else if(i>=42 && i<=91)  ev10[i]=0.0;
		else if(i==92)  ev10[i]=14.2;
		else if(i>=93 && i<=98)  ev10[i]=0.0;
		else ev10[99]=0.5;
	}
	itr3[0]=2;
	itr3[1]=64;
	for(i=0;i< 64;i++){
		if(i<=30)  ev30[i]=2.5;
		else if(i>=31 && i<=61)  ev30[i]=2;
		ev30[62]=3;
		ev30[63]=75;
	}
	for(i=0;i< 64;i++){
		ev31[i]=100;
	}
	printf("   -LOOP.1\n");
	for(i=0;i<itr1[0];i++)
	{
		if (ev10[i] * ev10[i] >  IS10)
		{
			goto LBL_19;
		}
	}
	printf("  NORMAL EXIT \n");
LBL_19:
	;
	printf("  BRANCH OUT\n");
	for(k=1;k<=2;k++)
	{
		L=k;
		for(j=1;j<=2;j++)
		{
			for(i=99;i>=0;i-=1)
			{
				IS20=log(dv20[i]);
				if (IS20 <  0)
				{
					goto LBL_29;
				}
				L++;
			}
		}
LBL_29:
		;
	}
	printf("  -LOOP.02 \n");
	printf(" %d,%ld\n",i,L);
	printf("    -LOOP.03 \n");
	for(i=0;i<itr3[0];i++)
	{
		ES30=ev30[i]/itr3[0];
		if (ES30 >= 1 &&  ev30[i] >= itr3[0])  goto LBL_30;
		goto LBL_39;
LBL_30:
		;
		ev31[i]=i;
	}
	printf("    NORMAL EXIT\n");
	goto LBL_38;
LBL_39:
	;
	printf("    BRANCH OUT\n");
LBL_38:
	;
	for(c=0;c<64;c++){
		printf(" %g,%d",ev31[c],i);
	}
        printf("\n");
	exit (0);
}
                                                                                                                                                                    
