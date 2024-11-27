#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct {
       double a[10];
       }x;
struct {
       double b;
       }y[10];
int main(){
       int i;
       for(i=0;i<10;i++) x.a[i]=0;
       for(i=0;i<10;i++) y[i].b=0;
       for(i=0;i<10;i++) x.a[i]=x.a[i]+i;
       for(i=0;i<10;i++) y[i].b=y[i].b+i;
	printf("%g %g\n",x.a[9],y[9].b);
	exit(0);
       }
