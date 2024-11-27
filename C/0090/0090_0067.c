#include <stdio.h>
#include <math.h>

void sub1(int tmp);
double func1(int tmp);

void sub1(int tmp){
  tmp = tmp + 1;
  return;
}

double func1(int tmp){
  return (double)(tmp + 2);
}

int main(){
  double A[10],C[10],E[10],F[10];
  double D[10]={1,2,3,4,5,6,7,8,9,10};
  double B[10]={5,6,7,8.9,10,11,12,13,14};
  int i;
  int tmp;


  for(i=0; i<10; i++){
    C[i] = i+1;
    F[i] = C[i]+1;
    A[i] = exp(C[i]);
    if ( i == 5 ){ goto GOTO10; }
    D[i] = i;
    B[i] = exp(D[i]);
  GOTO10:
    E[i] = exp(F[i]);
  }

  for(i=0;i<10;i++){
    printf("A1=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B1=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E1=%f\n",E[i]);
  }


  for(i=0; i<10; i++){
    C[i] = i+1;
    A[i] = exp(C[i]);
     tmp = i;
     sub1(tmp);
    E[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A2=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("E2=%f\n",E[i]);
  }


  for(i=0; i<10; i++){
    C[i] = i+1;
    A[i] = exp(C[i]);
    B[i] = func1(i);
    E[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A3=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("E3=%f\n",E[i]);
  }


  for(i=0; i<10; i++){
    C[i] = i;
    A[i] = exp(C[i]);
    B[i] = exp(D[i]);
    E[i] = exp(F[i]);
  }

  for(i=0;i<10;i++){
    printf("A4=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B4=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E4=%f\n",E[i]);
  }

  return 0;
}
