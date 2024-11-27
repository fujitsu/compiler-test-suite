#include <stdlib.h>
#include <stdio.h>
#include <math.h>

 

struct {
       double a[10][10];
       }x;
int main(){
       int i;
       int j;
       for(i=0;i<10;i++){
          for(j=0;j<10;j++){ 
              x.a[i][j]=0;
              }
          }
       for(i=0;i<10;i++){
          for(j=0;j<10;j++){ 
              x.a[i][j]=x.a[i][j]+i+j;
              }
          }
       printf("a[0][0]=%g\n",x.a[0][0]);
	exit(0);
       }
