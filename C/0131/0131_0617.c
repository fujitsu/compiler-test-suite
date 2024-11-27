#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double b;
       }y[100][100];
int main(){
       int i;
       int j;
       for(i=0;i<100;i++){
          for(j=0;j<100;j++){
             y[i][j].b=0;
             }
          }
       for(i=0;i<100;i++){
          for(j=0;j<100;j++){
             y[i][j].b=y[i][j].b;
             }
          }
       printf("b[0][0]=%g\n",y[0][0].b);
	exit(0);
       }
