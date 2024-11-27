#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int init();

union uni{
	struct str{
		double dv1[100],dv2[100],dv3[100];
	}aaa;
	double dv[300];
}bbb;
int main(){
	long int i;
	float ds;
	init();
	for(i=0;i<100;i++){
		ds=bbb.aaa.dv1[i]*bbb.aaa.dv2[i];
		goto LBL_110;
LBL_120:
		;
		bbb.aaa.dv3[i]=ds*bbb.aaa.dv3[i]+7.0;
	}
	printf("  ***  ***\n");
	for(i=0;i<100;i++){
		printf(" dv1[%ld] => %f ",i,bbb.aaa.dv1[i]);
		printf(" dv2[%ld] => %f ",i,bbb.aaa.dv2[i]);
		printf(" dv3[%ld] => %f\n",i,bbb.aaa.dv3[i]);
	}
	exit (0);
LBL_110:
	;
	bbb.aaa.dv3[i]=ds-bbb.aaa.dv1[i];
	goto LBL_120;
}
int init()
{
	long int i;
	for(i=0;i<300;i++){
		bbb.dv[i]=i+1;
	}
	return 0;
}
