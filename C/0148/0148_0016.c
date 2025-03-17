#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10],
	b[10]={
				1.0,1.0,2.0,2.0,2.0,3.14159265,5.0,5.0,5.0,5.0		},
	c[10]={
				2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0		};
	long int l1=0,
	l2=0,
	l3=0,
	l4=0,
	l5=0,
	n=10,
	i,k;
	for(i=0;i<10;i++){
		for(k=0;k<10;k++){
			l1++;
			l2-=2;
			l3=n-l3;
			l4-=n;
			l5=k+1;
			a[k]=b[k]+c[k];
		}
	}
	printf("  ***** 2200 *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f\n",i,a[i]);
	}
	for(i=0;i<10;i++){
		printf(" b[%ld] => %f\n",i,b[i]);
	}
	for(i=0;i<10;i++){
		printf(" c[%ld] => %f\n",i,c[i]);
	}
	printf(" l2 => %ld l3 => %ld l4 => %ld l5 => %ld\n",l2,l3,l4,l5);
	exit (0);
}
