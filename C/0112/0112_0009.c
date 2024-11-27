#include <stdio.h>
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
      Ex[i][j] = 0;
      res[i][j] = -0;
    }
  }

  for(i=0;i<4;i++){
    for(j=0;j<6;j++){
      Ex[i][j]=  -Ex[i][j];
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
	printf("%g %g \n",res[i][j],Ex[i][j]);
      }
    }
  }

}

