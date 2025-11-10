


#include <stdio.h>

#define M 10
#define N 10
static __thread int a[M][N];
static __thread int b[M];

static void sub1(){
  int i,j;
  for( i=0; i<M; i++ ){
    for( j=0; j<N; j++ ){
      a[j][i] = j * 1;
    }
    b[i] = i * 2 * ( N / M );
  }
  return;
}

static void init(){
  int i,j;
#pragma omp parallel
  {
    for( i=0; i<M; i++ ){
      for( j=0; j<N; j++ ){
        a[i][j] = -1;
      }
      b[i] = -1;
    }
  }
}

int lto_sub_101(){
  int i,j;

  init();
  sub1();
  printf("A=");
  for(i=0; i<M; i++){
    for(j=0; j<N; j++ ){
      printf("%d ",a[i][j]);
    }
  }
  printf("\n");
  printf("B=");
  for(i=0; i<M; i++) printf("%d ",b[i]);
  printf("\n");

  return 0;
}
