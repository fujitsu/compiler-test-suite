#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float x[10];
} a,b,c,d;  
int main(){
	long int i,j,k;
        b.x[0]=1.0;
        b.x[1]=1.0;
        b.x[2]=2.0;
        b.x[3]=2.0;
        b.x[4]=2.0;
        b.x[5]=3.14;
        b.x[6]=5.0;
        b.x[7]=5.0;
        b.x[8]=5.0;
        b.x[9]=5.0;
        for(i=0;i<10;i++){
	         c.x[i]=2.0;
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				a.x[k]=b.x[k]+c.x[k];
			}
			if (a.x[j]>10.0) return 0;
		}
	}
	printf("  *****  (1) (STOP)*****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f\n",i,a.x[i]);
	}
	for(i=0;i<10;i++){
		printf(" b[%ld] => %f\n",i,b.x[i]);
	}
	for(i=0;i<10;i++){
		printf(" c[%ld] => %f\n",i,c.x[i]);
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				d.x[k]=sin(b.x[k]);
			}
		}
	}
	printf("  *****  (2) (LIBF SIN)*****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %f\n",i,d.x[i]);
	}
	exit (0);
}
