#include <stdio.h>
#include <math.h>


int main(){
  double A[10],C[10],E[10],F[10],G[10];
  double B[10]={1,2,3,4,5,6,7,8,9,10};
  double D[10]={5,6,7,8.9,10,11,12,13,14};
  double H[10]={2,3,4,5,6,7,8,9,10,11};
  int i,j,k;

  for(i=0; i<10; i++){
    A[i] = 0;
    C[i] = 0;
    E[i] = 0;
    F[i] = 0;
    G[i] = 0;
  }


  for(i=0; i<10; i++){
    C[i] = i+1;
    A[i] = exp(C[i]);
    if( i == 5 ){ goto GOTO10; }
    D[i] = i+2;
    B[i] = exp(D[i]);
  GOTO10:
    E[i] = exp((double)5.0);
    F[i] = exp(C[i]);
    G[i] = exp(E[i]);
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
  for(i=0;i<10;i++){
    printf("F1=%f\n",F[i]);
  }

  for(i=0; i<10; i++){
    C[i] = i+1;
    A[i] = exp(C[i]);
    E[i] = exp((double)5.0);
    if( i == 5 ){ goto GOTO20; }
    D[i] = i+2;
    B[i] = exp(D[i]);
  GOTO20:
    F[i] = exp(C[i]);
    G[i] = exp(E[i]);
  }

  for(i=0;i<10;i++){
    printf("A2=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B2=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E2=%f\n",E[i]);
  }
  for(i=0;i<10;i++){
    printf("F2=%f\n",F[i]);
  }

  for(i=0; i<10; i++){
    C[i] = i;
    D[i] = i+1;
    A[i] = exp(C[i])+exp(D[i]);
    E[i] = i+2;
    F[i] = i+3;
    B[i] = exp(C[i])+exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A3=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B3=%f\n",B[i]);
  }



  for(i=0; i<10; i++){
    C[i] = i;
    D[i] = i+1;
    A[i] = exp(C[i])+exp(D[i]);
    E[i] = i+2;
    F[i] = i+3;
    B[i] = exp(C[i])-exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A4=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B4=%f\n",B[i]);
  }


  for(j=0; j<10; j++){
    C[j] = j;
    D[j] = exp(C[j]);
    i = 0;
    while( i < 10 ){
      A[i] = i+1;
      B[i] = exp(A[i]);
      i = i+1;
    }
    E[j] = j+1;
    F[j] = exp(E[j]);
  }

  for(i=0;i<10;i++){
    printf("B5=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("D5=%f\n",D[i]);
  }
  for(i=0;i<10;i++){
    printf("F5=%f\n",F[i]);
  }

  for(j=0; j<10; j++){
    C[j] = j;
    D[j] = exp(C[j]);
    E[j] = j+1;
    F[j] = exp(E[j]);
    i = 0;
    while( i < 10 ){
      A[i] = i+1;
      B[i] = exp(A[i]);
      G[i] = exp(E[j]);
      i = i+1;
    }
  }

  for(i=0;i<10;i++){
    printf("B6=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("D6=%f\n",D[i]);
  }
  for(i=0;i<10;i++){
    printf("F6=%f\n",F[i]);
  }
  for(i=0;i<10;i++){
    printf("G6=%f\n",G[i]);
  }

  for(i=0; i<10; i++){
    C[j] = i;
    if ( i > 5 ){
      A[i] = exp(C[i]);
      F[i] = exp(C[i]);
      G[i] = exp(C[i]);
      if( i > 7 ){
        B[i] = exp(C[i]);
      }
      else{
        E[i] = exp(C[i]);
      }
    }
    else{
      A[i] = exp(C[i]);
      D[i] = i;
      B[i] = exp(D[i]);
    }
  }

  for(i=0;i<10;i++){
    printf("A7=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B7=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E7=%f\n",E[i]);
  }
  for(i=0;i<10;i++){
    printf("F7=%f\n",F[i]);
  }
  for(i=0;i<10;i++){
    printf("G7=%f\n",G[i]);
  }


  for( i=0; i<10; i++ ){
    C[i] = i;
    A[i] = exp(C[i]);
    switch(i){
    case 2:
    case 3:
    case 4:
      D[i] = i;
      B[i] = exp(D[i]);
      A[i] = exp(D[i]);
      break;
    case 5:
      B[i] = exp(A[i]);
      break;
    case 6:
    case 7:
    case 9:
      C[i] = i+1;
      B[i] = exp(C[i]);
      break;
    }
    D[i] = i+1;
    B[i] = exp(D[i]);
  }

  for(i=0;i<10;i++){
    printf("A8=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B8=%f\n",B[i]);
  }

  for( i=0; i<10; i++ ){
    C[i] = i;
    A[i] = exp(C[i]);
    B[i] = exp(C[i]+1);
    switch(i){
    case 2:
    case 3:
    case 4:
      D[i] = i;
      B[i] = exp(D[i]);
      A[i] = exp(D[i]);
      break;
    case 5:
      B[i] = exp(A[i]);
      break;
    case 6:
    case 7:
    case 9:
      C[i] = i+1;
      B[i] = exp(C[i]);
      break;
    }
    D[i] = i+1;
    B[i] = exp(D[i]);
    E[i] = exp(C[i]);
  }

  for(i=0;i<10;i++){
    printf("A9=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B9=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E9=%f\n",E[i]);
  }


  for( i=0; i<10; i++ ){
    C[i] = i;
    A[i] = exp(C[i]);
    if ( i > 5 ){
      D[i] = i;
      B[i] = exp(D[i]);
      C[i] = exp(A[i]);
      break;
    }
    else{
      if( i == 3 ) continue;
    }
    F[i]=i;
    E[i]=exp(F[i]);
    A[i]=exp(E[i]);
    E[i]=exp(E[i]);
  }
  for(i=0;i<10;i++){
    printf("A10=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B10=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E10=%f\n",E[i]);
  }

  for( j=0; j<10; j++ ){
    C[j] = j;
    A[j] = exp(C[j]);
    for( i=0; i<10; i++ ){
      D[i] = i;
      B[i] = exp(D[i]);
      F[i] = j;
      E[i] = exp(F[i]);
    }
    H[j] = i+j;
    G[j] = exp(H[j]);
  }

  for(i=0;i<10;i++){
    printf("A11=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B11=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E11=%f\n",E[i]);
  }
  for(i=0;i<10;i++){
    printf("G11=%f\n",G[i]);
  }

  for( k=0; k<10; k++ ){
    A[k] = exp(k);
    B[k] = exp(k+1);
    for( j=0; j<10; j++ ){
      C[j] = j;
      A[j] = exp(C[j]);
      for( i=0; i<10; i++ ){
        D[i] = i;
        B[i] = exp(D[i]);
        F[i] = j;
        E[i] = exp(F[i]);
      }
      H[j] = i+j;
      G[j] = exp(H[j]);
    }
    H[k] = exp(k);
    G[k] = exp(D[j-1]);
  }

  for(i=0;i<10;i++){
    printf("A12=%f\n",A[i]);
  }
  for(i=0;i<10;i++){
    printf("B12=%f\n",B[i]);
  }
  for(i=0;i<10;i++){
    printf("E12=%f\n",E[i]);
  }
  for(i=0;i<10;i++){
    printf("G12=%f\n",G[i]);
  }

  return 0;
}
