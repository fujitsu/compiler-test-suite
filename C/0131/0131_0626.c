#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct {
       double a;
       }x[10];
int main(){
       int i;
       int j;
       int k;
       int l;
       for(i=0;i<10;i++) x[i].a=0;
       for(i=1;i<11;i++) x[i-1].a=x[i-1].a+i;
       for(j=10;j<20;j++) x[j-1-2-3-4].a=x[j-4-3-2-1].a+j;
       for(k=100;k<110;k++) x[k-9-1-2-3-4-5-6-7-8-9-10-11-12-13].a=x[k-100].a+k;
       for(l=1000;l<1010;l++) x[l-0-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-36-37-38-39-40-41-42-43-44-45].a=x[l-1000].a+l;
       printf("x[0].a=%g\n",x[0].a);
	exit(0);
       }
