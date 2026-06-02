
#include <stdio.h>

#define N 10
static __thread int a[N];
static __thread int c=-1;

void sub1(){
  int i;
  for( i=0; i<N; i++ ) a[i] = i * 1;
  for( i=0; i<N; i++ ) c = i + 3;
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

  sub1();
  printf("A=");
  for(i=0; i<N; i++) printf("%d ",a[i]);
  printf("\n");
  printf("C=%d \n",c);
  return 0;
}
