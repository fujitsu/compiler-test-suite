#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[11];
} a;
struct st2{
        float x[10];
} b;
int main(){
	long int j,i;
	long int label;
        for(i=0;i<11;i++){
	        a.x[i]=0;
        } 
        for(i=0;i<10;i++){
	        b.x[i]=0;
        } 
	for(i=1;i<=10;i++){
		j=i-1;
		if (j>0) goto LBL_20;
		for(j=1;j<=10;j++){
			a.x[j-1]=j;
			goto LBL_29;
LBL_20:
			;
		}
LBL_29:
		;
		b.x[i-1]=i;
	}
	for(i=0;i<11;i++){
		printf(" a[%ld] => %f\n",i,a.x[i]);
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" b[%ld] => %f\n",i,b.x[i]);
	}
	for(i=0;i<10;i++){
		b.x[i]=0;
		a.x[i]=0;
	}
	for(i=1;i<=10;i++){
		j=i-1;
		if (j>0) goto LBL_120;
LBL_111:
		;
		
		a.x[j]=j;
LBL_120:
		;
		j=j+1;
		label=112;
		if (j<11) label=111;
		if(label==111) goto LBL_111;
		if(label==112) goto LBL_112;
LBL_112:
		;
		b.x[i-1]=i;
	}
	printf("\n");
	for(i=0;i<11;i++){
		printf(" a[%ld] => %f\n",i,a.x[i]);
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" b[%ld] => %f\n",i,b.x[i]);
	}
	for(i=0;i<10;i++){
		b.x[i]=0;
		a.x[i]=0;
	}
	for(i=1;i<=10;i++){
		j=i-1;
		goto LBL_220;
LBL_211:
		;
		a.x[j-1]=j;
LBL_220:
		;
		j=j+1;
		if(0<j && j<11) goto LBL_211;
		if(j==11) goto LBL_212;
LBL_212:
		;
		b.x[i-1]=i;
	}
	printf("\n");
	for(i=0;i<11;i++){
		printf(" a[%ld] => %f\n",i,a.x[i]);
	}
	printf("\n");
	for(i=0;i<10;i++){
		printf(" b[%ld] => %f\n",i,b.x[i]);
	}
	exit (0);
}

