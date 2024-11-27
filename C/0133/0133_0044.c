#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main(){
	double a[10],
	b[10]={
		1.0,1.0,2.0,2.0,2.0,3.14,5.0,5.0,5.0,5.0	},
	c[10]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	},
	d[10];
	long int i,j,k;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				a[k]=b[k]+c[k];
			}
			if (a[j]>10.0) return 0;
		}
	}
	printf("  *****  (1) (STOP)*****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %g \n",i,a[i]);
	}
	for(i=0;i<10;i++){
		printf(" b[%ld] => %g \n",i,b[i]);
	}
	for(i=0;i<10;i++){
		printf(" c[%ld] => %g \n",i,c[i]);
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				d[i]=sin(b[i]);
			}
		}
	}
	printf("  *****  (2) (LIBF SIN)*****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %g \n",i,d[i]);
	}
	exit (0);
}
