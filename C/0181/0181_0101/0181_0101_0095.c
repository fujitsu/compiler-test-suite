


#include <stdio.h>

#define N 10
static __thread int a[N];
static          int b[N];

static void sub1(){
  int i;
  for( i=0; i<N; i++ ){
    a[i] = i * 1;
    b[i] = i * 2;
  }
  return;
}

static void init(){
  int i;
#pragma omp parallel
  {
    for(i=0; i<N; i++) a[i] = -1;
  }
  for(i=0; i<N; i++) b[i] = -1;
}

int lto_sub_95(){
  int i;

  init();
  sub1();
  for(i=0; i<N; i++) printf("%d ",a[i]);
  printf("\n");
  for(i=0; i<N; i++) printf("%d ",b[i]);
  printf("\n");
  return 0;
}
