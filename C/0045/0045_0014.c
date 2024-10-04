#include <stdio.h>

#define N 20
int a[N];

void init() {
  int i;
  for(i=0; i<N; i++) a[i]=0;
} 
void output() {
  int i;
  for(i=0; i<N; i++) printf("%d ",a[i]); printf("\n"); 
} 
void alias(int *var, int **p) {
  *p = var;
}


void test1() {
  int *p, i, ie, j;

  init();
  ie = N/2;
  alias(&j ,&p);
  for(i=0; i<ie; i++){
    a[i] = i;
    *p = *p+1;
  }
  output();
}


void test2() {
  int *p, i, ie;

  init();
  ie = N/2;
  alias(&i ,&p);
  for(i=0; i<ie; i++){
    a[i] = i;
    *p = *p+1;
  }
  output();
}


void test3() {
  int *p, i, ie;

  init();
  ie = N/2;
  alias(&ie ,&p);
  for(i=0; i<ie; i++){
    a[i] = i;
    *p = 5;
  }
  output();
}
int main() {
  test1();
  test2();
  test3();
}
