#include <stdlib.h>
#include <stdio.h>

#include <math.h>
int main(){
	double ort,prt,qrt;
	double dd[10]={
		0.,1.,2.,3.,4.,5.,6.,7.,8.,9.	};
	double rs[10]={
		0.,1.,2.,3.,4.,5.,6.,7.,8.,9.	};
	double va[10]={
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	double vb[10]={
		1.,1.,1.,1.,1.,1.,1.,1.,1.,1.	};
	double pm1[10]={
		10.,10.,10.,10.,10.,10.,10.,10.,10.,10.	};
	double pm2[10]={
		2.,2.,2.,2.,2.,2.,2.,2.,2.,2.	};
	int i,n=10;
	printf("**********\n");
	for(i=0;i<n;i++){
		ort=sin(dd[i])+cos(rs[i]);
		prt=log(va[i]/vb[i]);
		qrt=exp(pm1[i]/pm2[i]);
		prt=sqrt(pm2[i]*pm1[i]);
		va[i]=pm1[i]/prt*prt-qrt*ort;
		vb[i]=pm2[i]/prt*prt-qrt*ort;
	}
	for(i=0;i<n;i++){
		printf("va[%d]=%g \n",i,va[i]*3.142);
	}
	exit (0);
}
