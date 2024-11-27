#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double a;
       }x[10];
struct {
       double b[10];
       }y;
int main(){
       int i;
       int j;
       x[0].a=0.0;
       y.b[0]=1.0;
       for(i=0;i<10;i++) x[i].a=0;
       for(j=0;j<10;j++) y.b[j]=0;
       for(i=0;i<10;i++) x[i].a=x[i].a+i;
       for(j=0;j<10;j++) y.b[j]=y.b[j]+j;
       printf("a[0]=%g\n",x[0].a);
       printf("b[0]=%g\n",y.b[0]);
	exit(0);
       }
