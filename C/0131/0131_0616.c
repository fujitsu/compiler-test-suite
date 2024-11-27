#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double a;
       }x[100];
int main(){
       int i;
       for(i=0;i<100;i++){
           x[i].a=i+1;
           }
       printf("a[0]=%g\n",x[0].a);
	exit(0);
       }
