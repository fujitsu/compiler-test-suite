


#include <stdio.h>

#define N 10

static void sub1(int a[N]){
static  int i;
  for( i=0; i<N; i++ ){
    a[i] = i * 2;
  }
  return;
}

static int sub2(int a){
  return a+1;
}

int lto_sub_100(){
  int i;
  static __thread int a[N];

#pragma omp parallel
  {
    for(i=0; i<N; i++) a[i] = -1;  
  }

  sub1(a);
  printf("A1=");
  for(i=0; i<N; i++) printf("%d ",a[i]);
  printf("\n");

  for(i=0; i<N; i++) sub2(a[i]);
  printf("A2=");
  for(i=0; i<N; i++) printf("%d ",a[i]);
  printf("\n");

  return 0;
}
