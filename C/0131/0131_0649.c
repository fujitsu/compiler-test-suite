#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
#define DA30(i,j) da30[i-1][j-1]
#define DB10(i,j,k) db10[i-1][j-1][k-1]
#define DB20(i,j,k) db20[i-1][j-1][k-1]
#define DB30(i,j,k) db30[i-1][j-1][k-1]
double  da30[20][20];
double  db10[20][20][20],db20[20][20][20],db30[20][20][20];
int main(){
	int i,j,k;
	for(j=1; j<=20; j++){
		for(i=1; i<=20; i++){
			DA30(i,j) = i;
		}
	}
	for(k=1; k<=20; k++){
		for(j=1; j<=20; j++){
			for(i=1; i<=20; i++){
				DB10(i,j,k) = i;
				DB20(i,j,k) = i-1;
				DB30(i,j,k) = i+1;
			}
		}
	}
	for(k=2; k<=10; k+=2){
		for(j=2; j<=10; j+=2){
			for(i=2; i<=10; i+=2){
				DB10(i,j,k) = DB20(i,j,k) + DB30(i,j,k);
				DB20(i-1,j+1,k) = DB10(i,j,k+1) * 2.0 - DA30(i,k);
			}
		}
	}
	for(k=1; k<=10; k++){
		for(j=1; j<=2; j++){
			for(i=1; i<=2; i++){
				printf(" DB10(%d,%d,%d) = %g \n",i,j,k,DB10(i,j,k));
				printf(" DB20(%d,%d,%d) = %g \n",i,j,k,DB20(i,j,k));
			}
		}
	}
	exit (0);
}
