
#include <stdio.h>
#include <math.h>

int main(){
  double A1[10],A2[10],E[10];
  double C[10]={1,2,3,4,5,6,7,8,9,10};
  double D[10]={10,11,12,13,14,15,16,17,18,19};
  double F[10]={11,12,13,14,15,16,17,18,19,20};
  int i,j,k;

  for(i=0; i<10; i++){
    A1[i] = exp(C[i]);
    C[i] = i+1;
  }

  for(i=0;i<10;i++){
    printf("dexp3 A1=%f\n",A1[i]);
  }


  for(i=0; i<10; i++){
    A1[i] = exp(C[i]);
    A2[i] = exp(A1[i] - A1[i] + C[i] + 100);
  }

  for(i=0;i<10;i++){
    printf("dexp5 A1=%f\n",A1[i]);
  }
  for(i=0;i<10;i++){
    printf("dexp5 A2=%f\n",A2[i]);
  }


  for(i=0; i<10; i++){
    A1[i] = exp(C[i]);
    C[i] = i+1;
    A2[i] = C[i];
    E[i] = A2[i];
    A2[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("dexp6 A1=%f\n",A1[i]);
  }
  for(i=0;i<10;i++){
    printf("dexp6 A2=%f\n",A2[i]);
  }
  for(i=0;i<10;i++){
    printf("E[i]=%f\n",E[i]);
  }


  for(i=0; i<10; i++){
    A1[i] = exp(C[i]);
    C[i] = C[i]+2;
    D[i] = C[i]+1;
    A2[i] = D[i];
    printf("dexp9 A2[%d]=%f\n",i,A2[i]);
    A2[i] = exp(F[i]);
  }

  for(i=0;i<10;i++){
    printf("dexp9 A1=%f\n",A1[i]);
  }
  for(i=0;i<10;i++){
    printf("dexp9 A2=%f\n",A2[i]);
  }

  return 0;
}
