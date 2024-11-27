#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[100][10];
} a,b;
struct st2{
        float x[100];
} c,d;  
int main(){
	long int i,j;
	for(i=0;i<100;i++){
		c.x[i]=(i+1)*0.12+(i+1)*1.2;
		d.x[i]=(i+1)*0.11+(i+1)*2.1;
		for(j=0;j<10;j++){
			b.x[i][j]=(i+1)+(j+1);
			a.x[i][j]=(i+j+2)*12.4;
		}
	}
	printf("  *** VCT MSG 251 - MI ***\n");
	for(j=0;j<10;j++){
		for(i=0;i<100;i++){
			printf(" a[%ld][%ld] => %g",i,j,a.x[i][j]);
			printf("       b[%ld][%ld] => %g\n",i,j,b.x[i][j]);
		}
	}
	printf("\n");
	for(i=0;i<100;i++){
		printf(" c[%ld] => %g",i,c.x[i]);
		printf("      d[%ld] => %g\n",i,d.x[i]);
	}
	printf("\n");
	exit (0);
}
