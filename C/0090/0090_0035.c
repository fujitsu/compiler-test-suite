#include <stdio.h>
#include <math.h>

void sub1(int tmp);
int  sub2(int tmp);

int main(){
  double A[10],C[10],E[10],F[10];
  double B[10]={1,2,3,4,5,6,7,8,9,10};
  double D[10]={1,2,3,4,5,6,7,8,9,10};
  int tmp;
  int i;


  for(i=0; i<10; i++){
    C[i] = i;
    F[i] = C[i]+1;
    A[i] = exp(C[i]);
    if( i == 5 ){ goto GOTO10; }
    D[i] = i;
    B[i] = exp(D[i]);
GOTO10:
    E[i] = exp(F[i]);
  }

  for(i=0;i<10;i++){
    printf("A=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E=%f\n",E[i]);
  }


  for( i=0; i<10; i++ ){
    C[i] = i;
    A[i] = exp(C[i]);
    tmp = i;
    sub1(tmp);
    E[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("E=%f\n",E[i]);
  }


  for( i=0; i<10; i++ ){
    C[i] = i;
    A[i] = exp(C[i]);
    B[i] = sub2(i);
    E[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("E=%f\n",E[i]);
  }


  for( i=0; i<10; i++ ){
    C[i] = i;
    A[i] = exp(C[i]);
    B[i] = exp(D[i]);
    E[i] = exp(F[i]);
  }

  for(i=0;i<10;i++){
    printf("A=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E=%f\n",E[i]);
  }

  return 0;
}

void sub1(int tmp){
  tmp  = tmp+1;
  return;
}

int sub2(int tmp){
  int ret;
  ret = tmp+2;
  return ret;
}
