#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10][10],b[10][10];
	long int i,j;
	float x;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			b[i][j]=(i+1)+(j+1);
			a[i][j]=(i+1)-(j+1);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			if (a[i][j]-4.0 == 0) goto LBL_1;
			x=(i+1)+(j+1);
		}
	}
LBL_1:
	;
	printf("  *** VCT MSG 210 DO BRANCH - MULTI LOOP ***\n");
	printf("  *** VCT MSG 310 DO BRANCH - MULTI LOOP ***\n");
	printf(" x => %f\n",x);
	j=6;
	i=0;
	while(i<10){
		x=a[i][j]+b[i][j];
		i++;
	}
	printf("  *** VCT MSG 211 - DO WHILE ***\n");
	printf("  *** VCT MSG 311 - DO WHILE ***\n");
	printf(" x => %f\n",x);
	j=6;
	i=0;
	do {
		x=a[i][j]+b[i][j];
		i++;
	}while(i<7);
	printf("  *** VCT MSG 211 - DO UNTIL ***\n");
	printf("  *** VCT MSG 311 - DO UNTIL ***\n");
	printf(" x => %f\n",x);
	j=6;
	i=0;
	while(a[i][j] != 0){
		x=a[i][j]+b[i][j];
		i++;
	}
	printf("  *** VCT MSG 211 - GO TO LOOP ***\n");
	printf("  *** VCT MSG 311 - GO TO LOOP ***\n");
	printf(" x => %f\n",x);
	j=6;
	x=0.0;
	for(i=0;i<10;i++){
		if (a[i][j] == 0)  goto LBL_2;
		if (i == 4)  break;
LBL_2:
		;
		x=a[i][j]+b[i][j];
	}
	printf("  *** VCT MSG 212 - DO BRANCH - ARTICULATION ***\n");
	printf("  *** VCT MSG 312 - DO BRANCH - ARTICULATION ***\n");
	printf(" x => %f\n",x);
	j=6;
	x=0.0;
	for(i=0;i<10;i++){
		if (a[i][j] == 0)goto LBL_3;
		if (i == 4) break;
		x=a[i][j]+b[i][j];
	}
	x=x+10.0;
LBL_3:
	;
	printf("  *** VCT MSG 213 - DO BRANCH - TWO EXITS ***\n");
	printf("  *** VCT MSG 313 - DO BRANCH - TWO EXITS ***\n");
	printf(" x => %f\n",x);
	exit (0);
}
