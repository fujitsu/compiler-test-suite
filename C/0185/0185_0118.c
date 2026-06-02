
#include <stdio.h>

#define N 10
static __thread int a[N];

void sub1(){
  int i=0;
  while( i<N ){
    a[i] = i + 1;
    i++;
  }
  return;
}

void sub2(){
  int i=0;
  do{
    a[i] = i * 1;
    i++;
  }while( i<N );
  return;
}

void init(){
  int i;
#pragma omp parallel
  {
    for(i=0; i<N; i++) a[i] = -1;
  }
}

int main(){
  int i;

  init();
  sub1();
  sub2();
  for(i=0; i<N; i++) printf("%d ",a[i]);
  printf("\n");
  return 0;
}
