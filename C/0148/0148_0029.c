#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	b[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		},
	c[10]={
				3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0		},
	d[10]={
				4.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0,4.0		},
	e[10]={
				5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0,5.0		},
	f[10]={
				6.0,6.0,6.0,6.0,6.0,6.0,6.0,6.0,6.0,6.0		};
	float s;
	long int i;
	s=0;
	for(i=0;i<10;i++){
		a[i]=b[i]+c[i];
		goto LBL_11;
LBL_11:
		;
		d[i]=0.0;
		goto LBL_12;
LBL_12:
		;
		e[i]=f[i]+i+1;
		goto LBL_13;
LBL_13:
		;
		s+=f[i];
		goto LBL_10;
LBL_10:
		;
	}
	printf("  ***** 2321 (A) *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] => %f\n",
		    i,a[i],i,b[i],i,c[i]);
	}
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] => %f\n",
		    i,d[i],i,e[i],i,f[i]);
	}
	printf(" s => %f\n",s);
	for(i=0;i<10;i++){
		a[i]=b[i]+c[i];
		d[i]=0.0;
		e[i]=f[i]+i+1;
		s+=f[i];
	}
	printf("  ***** 2321 (B) *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] => %f\n",
		    i,a[i],i,b[i],i,c[i]);
	}
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] => %f\n",
		    i,d[i],i,e[i],i,f[i]);
	}
	printf(" s => %f\n",s);
	for(i=0;i<10;i++){
		a[i]=b[i]+c[i];
		d[i]=0.0;
		e[i]=f[i]+i+1;
		s+=f[i];
	}
	printf("  ***** 2321 (C) *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f   b[%ld] => %f   c[%ld] => %f\n",
		    i,a[i],i,b[i],i,c[i]);
	}
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f   e[%ld] => %f   f[%ld] => %f\n",
		    i,d[i],i,e[i],i,f[i]);
	}
	printf(" s => %f\n",s);
	exit (0);
}
