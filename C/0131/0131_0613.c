#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double a[10];
       }x;
int main(){
       int i;
       for(i=0;i<10;i++) x.a[i]=0;
       for(i=0;i<10;i++) x.a[i]=x.a[i]+i;
       printf("a[0]=%g\n",x.a[0]);
	exit(0);
       }
