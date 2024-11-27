#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1
{
        float ff[10][10];
} a,b;
int main(){
	long int i,j;
	float x;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			b.ff[i][j]=(i+1)+(j+1);
			a.ff[i][j]=(i+1)-(j+1);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			if (a.ff[i][j]-4.0 == 0) goto LBL_1;
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
		x=a.ff[i][j]+b.ff[i][j];
		i++;
	}
	printf("  *** VCT MSG 211 - DO WHILE ***\n");
	printf("  *** VCT MSG 311 - DO WHILE ***\n");
	printf(" x => %f\n",x);
	j=6;
	i=0;
	do {
		x=a.ff[i][j]+b.ff[i][j];
		i++;
	}while(i<7);
	printf("  *** VCT MSG 211 - DO UNTIL ***\n");
	printf("  *** VCT MSG 311 - DO UNTIL ***\n");
	printf(" x => %f\n",x);
	j=6;
	i=0;
	while(a.ff[i][j] != 0){
		x=a.ff[i][j]+b.ff[i][j];
		i++;
	}
	printf("  *** VCT MSG 211 - GO TO LOOP ***\n");
	printf("  *** VCT MSG 311 - GO TO LOOP ***\n");
	printf(" x => %f\n",x);
	j=6;
	x=0.0;
	for(i=0;i<10;i++){
		if (a.ff[i][j] == 0)  goto LBL_2;
		if (i == 4)  break;
LBL_2:
		;
		x=a.ff[i][j]+b.ff[i][j];
	}
	printf("  *** VCT MSG 212 - DO BRANCH - ARTICULATION ***\n");
	printf("  *** VCT MSG 312 - DO BRANCH - ARTICULATION ***\n");
	printf(" x => %f\n",x);
	j=6;
	x=0.0;
	for(i=0;i<10;i++){
		if (a.ff[i][j] == 0)goto LBL_3;
		if (i == 4) break;
		x=a.ff[i][j]+b.ff[i][j];
	}
	x=x+10.0;
LBL_3:
	;
	printf("  *** VCT MSG 213 - DO BRANCH - TWO EXITS ***\n");
	printf("  *** VCT MSG 313 - DO BRANCH - TWO EXITS ***\n");
	printf(" x => %f\n",x);
	exit (0);
}

