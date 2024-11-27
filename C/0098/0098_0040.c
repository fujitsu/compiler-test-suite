#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int init();

union uni{
	struct str{
		double dv1[100];
		double dv2[100];
		double dv3[100];
	}aa;
	double dv[300];
}bb;
int main(){
	float ds;
	long int i;
	init();
	for(i=0;i<100;i++){
		ds=bb.aa.dv1[i]*bb.aa.dv2[i];
		goto LBL_110;
LBL_120:
		;
		bb.aa.dv3[i]=ds*bb.aa.dv3[i]+7.0;
	}
	printf("  ***  ***\n");
	for(i=0;i<100;i++){
		printf(" dv1[%ld] => %20.13f  dv2[%ld] => %20.13f\n",
		    i,bb.aa.dv1[i],i,bb.aa.dv2[i]);
	}
	for(i=0;i<100;i++){
		printf(" dv3[%ld] => %20.13f\n",i,bb.aa.dv3[i]);
	}
	exit (0);
LBL_110:
	;
	bb.aa.dv3[i]=ds-bb.aa.dv1[i];
	goto LBL_120;
}
int init(){
	long int i;
	for(i=0;i<300;i++){
		bb.dv[i]=i+1;
	}
	return 0;
}
