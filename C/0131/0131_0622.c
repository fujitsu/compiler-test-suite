#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double a;
       }x[10][10];
struct {
       double b[10][10][10];
       }y;
int main(){
       int i;
       int j;
       int k;
       x[0][0].a=0.0;
       y.b[0][0][0]=1.0;
       for(i=0;i<10;i++){ 
          for(j=0;j<10;j++) {
             x[i][j].a=i+1;
             for(k=0;k<10;k++) {
                y.b[i][j][k]=j+1;
                }
             } 
          } 
       printf("a[0][0]=%g\n",x[0][0].a);
       printf("b[0][0][0]=%g\n",y.b[0][0][0]);
	exit(0);
       }
