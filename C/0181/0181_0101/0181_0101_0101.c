


#include <stdio.h>

#define M 10
static __thread int a[M];
static int b[M];         

static void init(){
  int i;
#pragma omp parallel
  {
    for(i=0; i<M; i++) a[i] = -1;
  }
  for(i=0; i<M; i++) b[i] = -1;
}

int lto_sub_102(){
  int i,j;

  init();
    
  a[1] = 50;
  for( i=0; i<M; i++ ) a[i] = i * 2;
  a[2] = 50;
  for( j=0; j<M; j++ ) b[j] = j * 3;
  a[3] = 100;

  for( i=0; i<M; i++ ) printf("A1=%d ",a[i]);
  printf("\n");
  for( i=0; i<M; i++ ) printf("B1=%d ",b[i]);
  printf("\n");

    
  for( i=0; i<M; i++ ) a[i] = i * 2;
  for( j=0; j<M; j++ ) b[j] = j * 3;

  for( i=0; i<M; i++ ) printf("A2=%d ",a[i]);
  printf("\n");
  for( i=0; i<M; i++ ) printf("B2=%d ",b[i]);
  printf("\n");

  
  for( i=0; i<M; i++ ) b[i] = b[i] + 2;
  a[4] = 100;
  for( j=0; j<M; j++ ) b[j] = b[j] + 3;

  for( i=0; i<M; i++ ) printf("A3=%d ",a[i]);
  printf("\n");
  for( i=0; i<M; i++ ) printf("B3=%d ",b[i]);
  printf("\n");

  return 0;
}
