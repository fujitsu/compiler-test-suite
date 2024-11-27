#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float a[10];
        float b[10];
        float c[10];
} tag1;
int main(){
	long int l1=0,
	l2=0,
	l3=0,
	l4=0,
	l5=0,
	n=10,
	i,k;
        tag1.b[0]=1.0;
        tag1.b[1]=1.0;
        tag1.b[2]=2.0;
        tag1.b[3]=2.0;
        tag1.b[4]=2.0;
        tag1.b[5]=3.14159265;
        tag1.b[6]=5.0;
        tag1.b[7]=5.0;
        tag1.b[8]=5.0;
        tag1.b[9]=5.0;
        for(i=0;i<10;i++){
                tag1.c[i]=2.0;
	}
	for(i=0;i<10;i++){
		for(k=0;k<10;k++){
			l1++;
			l2-=2;
			l3=n-l3;
			l4-=n;
			l5=k+1;
			tag1.a[k]=tag1.b[k]+tag1.c[k];
		}
	}
	printf("  *****  *****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %f\n",i,tag1.a[i]);
	}
	for(i=0;i<10;i++){
		printf(" b[%ld] => %f\n",i,tag1.b[i]);
	}
	for(i=0;i<10;i++){
		printf(" c[%ld] => %f\n",i,tag1.c[i]);
	}
	printf(" l2 => %ld l3 => %ld l4 => %ld l5 => %ld\n",l2,l3,l4,l5);
	exit (0);
}

