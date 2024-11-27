#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  long int x[11];
} n,m;
struct st2{
  float x[21];
} a;
struct st3{
  float x[11];
} b;
int main(){
	long int k,i;
	k=10;
        for(i=0;i<11;i++){
              n.x[i]=1;
              m.x[i]=2;
              b.x[i]=3.0;
        }      
        for(i=0;i<10;i++){
              a.x[i]=0.0;
        }      
        for(;i<21;i++){
              a.x[i]=2.5;
        }      
	if (n.x[2] == 1){
		for(i=0;i<k;i++){
			m.x[i]=m.x[i+1]+n.x[i+k-10];
		}
	}
	else{
		for(i=0;i<10;i++){
			a.x[i+k]=a.x[i+k+1]+b.x[i+k-10];
		}
	}
	printf("  *****  ****\n");
	printf(" k => %ld\n",k);
	for(i=0;i<11;i++){
		printf(" m[%ld] => %ld     n[%ld] => %ld\n",i,m.x[i],i,n.x[i]);
	}
	for(i=10;i<21;i++){
		printf(" a[%ld] => %f\n",i,a.x[i]);
	}
	for(i=0;i<11;i++){
		printf(" b[%ld] => %f\n",i,b.x[i]);
	}
	exit (0);
}

