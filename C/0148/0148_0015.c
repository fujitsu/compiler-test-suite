#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>











int main(){
	float b[10],d[10],
	a[10]={
				0.123,3.14159265,0.16,2.1,7.7,10.0,-5.0,
				                   -3.1415,0.0,3.0		};
	static char c[10][10]={
				"         \0","         \0","         \0",
	                        "         \0","         \0","         \0",
	                        "         \0","         \0","         \0",
                                "         \0"		};
	long int i;
	float func();
	for(i=0;i<10;i++){
		b[i]=a[i]/2.0;
	}
	printf("  ***** 2110 (1) (READ)*****\n");
	for(i=0;i<10;i++){
		printf(" a[%ld] => %g\n",i,a[i]);
	}
	for(i=0;i<10;i++){
		d[i]=func(b[i]);
	}
	printf("  ***** 2110 (2) (EREF)*****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %g\n",i,d[i]);
	}
	for(i=0;i<10;i++){
		if (d[i] >= b[i]){
			strcpy(&c[i][0],"ABCDEFGH\0");
		}
	}
	printf("  ***** 2110 (3) (CHAR)*****\n");
	for(i=0;i<10;i++){
		printf(" c[%ld][] => %s\n",i,&c[i][0]);
	}
	for(i=0;i<10;i++){
		if (c[i][0] == 'A'){
			if (c[i][1] == 'B'){
				d[i]=b[i]*d[i];
			}
		}
	}
	printf("  ***** 2110 (4) (CHAR) NOT GROUP *****\n");
	for(i=0;i<10;i++){
		printf(" d[%ld] => %g\n",i,d[i]);
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
