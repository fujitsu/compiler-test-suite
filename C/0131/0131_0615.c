#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double a[10][10][10][10];
       }x;
int main(){
       int i;
       int j;
       int k;
       int l;
       for(i=0;i<10;i++){
          for(j=0;j<10;j++){
             for(k=0;k<10;k++){
                for(l=0;l<10;l++){
                       x.a[i][j][k][l]=0;
                   }
                }
             }
          }
       for(i=0;i<10;i++){
          for(j=0;j<10;j++){
             for(k=0;k<10;k++){
                for(l=0;l<10;l++){
                       x.a[i][j][k][l]=x.a[i][j][k][l]+i+j;
                   }
                }
             }
          }
       printf("a[0][0][0][0]=%g\n",x.a[0][0][0][0]);
	exit(0);
       }
