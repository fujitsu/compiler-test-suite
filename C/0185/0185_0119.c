
#include <stdio.h>

#define N 10
static __thread int a[N];   
static int b[N];

void sub1(){
  int i;
  a[0] = 0;
  for( i=a[0]; i<N; i++ ){
    b[i] = i * 2;
  }
  return;
}

void init(){
  int i;
#pragma omp parallel
  {
    for(i=0; i<N; i++) a[i] = -1;
  }
  for(i=0; i<N; i++) b[i] = -1;
}

int main(){
  int i;

  init();
  sub1();
  for(i=0; i<N; i++) printf("%d ",b[i]);
  printf("\n");
  return 0;
}
