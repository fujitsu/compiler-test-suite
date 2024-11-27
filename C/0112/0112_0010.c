#include <stdio.h>
#include <math.h>

int main(){
  int i,j;

double Hz[5][6];
double Ex[5][6];
double epx[5][6];
double Jx[5][6];
 double res[5][6];

int err=0;
 
 for(i=0;i<4;i++) {
   for(j=0;j<6;j++) {
      Ex[i][j] = i+1;
      Jx[i][j]=2;
      res[i][j] = Ex[i][j];
      res[i][j] = -res[i][j]/2;
    }
  }

  for(i=0;i<4;i++){
    for(j=0;j<6;j++){
      Ex[i][j]=Ex[i][j] / ( -Jx[i][j] );
    }
  }

  for(i=0;i<4;i++){
    for(j=0;j<6;j++){
      if (fabs(fabs(res[i][j])-fabs(Ex[i][j])) > 0.00002) {
	printf("%g %g %g \n",res[i][j],Ex[i][j]);
	err=1;
      }
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

