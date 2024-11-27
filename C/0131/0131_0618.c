#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double b;
       }y[10][10][10][10];
int main(){
       int i;
       int j;
       int k;
       int l;
       for(i=0;i<10;i++){
          for(j=0;j<10;j++){
             for(k=0;k<10;k++){
                for(l=0;l<10;l++){
                   y[i][j][k][l].b=i+1;
                   }
                }
             }
          }
       printf("b[0][0][0][0]=%g\n",y[0][0][0][0].b);
	exit(0);
       }
