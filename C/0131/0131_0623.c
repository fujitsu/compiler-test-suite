#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct {
       double a[10];
       }x;
int main(){
       int i;
       int j;
       int k;
       int l;
       for(i=1;i<11;i++) x.a[i-1]=0;
       for(i=1;i<11;i++) x.a[i-1]=x.a[i-1]+i;
       for(j=10;j<20;j++) x.a[j-1-2-3-4]=x.a[j-4-3-2-1]+i;
       for(k=100;k<110;k++) x.a[k-9-1-2-3-4-5-6-7-8-9-10-11-12-13]=x.a[k-100]+i;
       for(l=1000;l<1010;l++) x.a[l-0-1-2-3-4-5-6-7-8-9-10-11-12-13-14-15-16-17-18-19-20-21-22-23-24-25-26-27-28-29-30-31-32-33-34-36-37-38-39-40-41-42-43-44-45]=x.a[l-1000]+i;
       printf("x.a[0]=%g\n",x.a[0]);
	exit(0);
       }