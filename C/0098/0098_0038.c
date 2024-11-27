#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        long int x;
} n[11],m[11];
struct st2{
        float x;
} a[21],b[11]; 
int main(){
	long int k,i;
	k=0;
        for(i=0;i<11;i++){
	        n[i].x=1;
                m[i].x=2;
                b[i].x=3.0;
        }		
	for(i=0;i<10;i++){
                a[i].x=0.0;
        }  
	for(;i<21;i++){
                a[i].x=2.5;
        }  
	if (n[2].x == 1)
		k=10;
		else
		goto LBL_20;
LBL_20:
	;
	for(i=0;i<k;i++){
		m[i].x=m[i+1].x+n[i+k-10].x;
	}
	printf("  *****  (1)****\n");
	printf(" k => %ld\n",k);
	for(i=0;i<11;i++){
		printf(" m[%ld] => %ld     n[%ld] => %ld\n",i,m[i].x,i,n[i].x);
	}
	for(i=0;i<10;i++){
		a[i+k].x=a[i+k+1].x+b[i+k-10].x;
	}
	printf("  *****  (2)****\n");
	printf(" k => %ld\n",k);
	for(i=10;i<21;i++){
		printf(" a[%ld] => %f\n",i,a[i].x);
	}
	for(i=0;i<11;i++){
		printf(" b[%ld] => %f\n",i,b[i].x);
	}
	exit (0);
}

