#include <stdlib.h>
#include <math.h>
#include <stdio.h>

typedef struct{
	double dreal;
	double dimag;
}complex16;
int main()
{
	complex16 c[5][5],cs;
	long int n,i,j;
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			c[i][j].dreal=1.0;
			c[i][j].dimag=1.0;
		}
	}
	n=5;
	for(i=0;i<n;i++){
		cs.dreal=i+1;
		cs.dimag=0.0;
		for(j=0;j<n;j++){
			c[i][j].dreal=cs.dreal;
			c[i][j].dimag=cs.dimag;
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			printf("  C[%d][%d]<dreal> ==> %21.8f \n",i,j,c[i][j].dreal);
			printf("         <dimag> ==> %21.8f \n",c[i][j].dimag);
		}
	}
	for(i=0;i<n;i++){
		cs.dreal=-(i+1);
		cs.dimag=0.0;
		for(j=0;j<n;j++){
			c[i][j].dreal=cs.dreal;
			c[i][j].dimag=cs.dimag;
		}
	}
	for(j=0;j<5;j++){
		for(i=0;i<5;i++){
			printf("  C[%d][%d]<dreal> ==> %21.8f \n",i,j,c[i][j].dreal);
			printf("         <dimag> ==> %21.8f \n",c[i][j].dimag);
		}
	}
	exit (0);
}
