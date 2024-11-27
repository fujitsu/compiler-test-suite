#include <stdio.h>
int main(){
  int i,j;

float Hz[5][6];
float Ex[5][6];
float epx[5][6];
float Jx[5][6];
float res[5][6];

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
	printf("%f %f \n",res[i][j],Ex[i][j]);
      }
    }
  }

}

