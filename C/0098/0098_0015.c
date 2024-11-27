#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

struct st1{
  float x[10];
} a,b,d;
int main(){
	static char c[10][10]={
				"         \0","         \0","         \0",
	                        "         \0","         \0","         \0",
	                        "         \0","         \0","         \0",
                                "         \0"		};
	long int i;
	float func();
        a.x[0]=0.123;
        a.x[1]=3.14159265;
        a.x[2]=0.16;
        a.x[3]=2.1;
        a.x[4]=7.7;
        a.x[5]=10.0;
        a.x[6]=-5.0;
        a.x[7]=-3.1415;
        a.x[8]=0.0;
        a.x[9]=3.0;
	for(i=0;i<10;i++){
		b.x[i]=a.x[i]/2.0;
	}
	printf("  *****  (1) (READ)*****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %g\n",i,a.x[i]);
	}
	for(i=0;i<10;i++){
		d.x[i]=func(b.x[i]);
	}
	printf("  *****  (2) (EREF)*****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %g\n",i,d.x[i]);
	}
	for(i=0;i<10;i++){
		if (d.x[i] >= b.x[i]){
			strcpy(&c[i][0],"ABCDEFGH\0");
		}
	}
	printf("  *****  (3) (CHAR)*****\n");
	for(i=0;i<10;i++){
		printf(" c[%ld][] => %s\n",i,&c[i][0]);
	}
	for(i=0;i<10;i++){
		if (c[i][0] == 'A'){
			if (c[i][1] == 'B'){
				d.x[i]=b.x[i]*d.x[i];
			}
		}
	}
	printf("  *****  (4) (CHAR) NOT GROUP *****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %g\n",i,d.x[i]);
	}
	exit (0);
}
float func(r)
float r;
{
	float rr;
	rr=(float)(pow((double)r,2.0)+0.5);
	return(rr);
}
