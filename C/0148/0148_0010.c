#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[100][10],b[100][10];
	float c[100],d[100];
	long int i,j;
	for(i=0;i<100;i++){
		c[i]=(i+1)*0.12+(i+1)*1.2;
		d[i]=(i+1)*0.11+(i+1)*2.1;
		for(j=0;j<10;j++){
			b[i][j]=(i+1)+(j+1);
			a[i][j]=(i+j+2)*12.4;
		}
	}
	printf("  *** VCT MSG 251 - MI ***\n");
	for(j=0;j<10;j++){
		for(i=0;i<100;i++){
			printf(" a[%ld][%ld] => %g",i,j,a[i][j]);
			printf("       b[%ld][%ld] => %g\n",i,j,b[i][j]);
		}
	}
	printf("\n");
	for(i=0;i<100;i++){
		printf(" c[%ld] => %g",i,c[i]);
		printf("      d[%ld] => %g\n",i,d[i]);
	}
	printf("\n");
	exit (0);
}
