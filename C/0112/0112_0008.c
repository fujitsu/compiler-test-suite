#include <stdio.h>
int main(){
  int i,j;

double Hz[5][6];
double Ex[5][6];
double epx[5][6];
double Jx[5][6];
double res[5][6]={0,0,0,0,0,0,0,-1,-2,-3,-4,-5,0,-2,-4,-6,-8,-10,0,
                  -3,-6,-9,-12,-15 };
int err=0;
 
 for(i=0;i<4;i++) {
   for(j=0;j<6;j++) {
      Ex[i][j] = 0;
      epx[i][j] = i;
      Jx[i][j] = j;
    }
  }

  for(i=0;i<4;i++){
    for(j=0;j<6;j++){
      Ex[i][j]=Ex[i][j] + epx[i][j] * ( -Jx[i][j]);
    }
  }

  for(i=0;i<4;i++){
    for(j=0;j<6;j++){
      if (res[i][j] != Ex[i][j]) err=1;
    }
  }

  if (err == 0) {
      printf(" OK \n");
  } else {
    printf(" NG \n");
    for(i=0;i<4;i++){
      for(j=0;j<6;j++){
	printf("%f %f \n",res[i][j],Ex[i][j]);
      }
    }
  }

}

