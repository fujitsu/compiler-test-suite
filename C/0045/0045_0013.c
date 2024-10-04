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
  alias(&j ,&p);
  ie = N/2;
  i=0;
  do {
    a[i] = i;
    *p = *p+1;
    i++;
  } while(i<ie);
  output();
}


void test2() {
  int *p, i, ie;

  init();
  alias(&i ,&p);
  ie = N/2;
  i=0;
  do {
    a[i] = i;
    *p = *p+1;
    i++;
  } while(i<ie);
  output();
}


void test3() {
  int *p, i, ie;

  init();
  alias(&i ,&p);
  ie = N/2;
  i=0;
  do {
    a[i] = i;
    i++;
    *p = *p+1;
  } while(i<ie);
  output();
}


void test4() {
  int *p, i, ie;

  init();
  alias(&ie ,&p);
  ie = N/2;
  i=0;
  do {
    a[i] = i;
    *p = 5;
    i++;
  } while(i<ie);
  output();
}
int main() {
  test1();
  test2();
  test3();
  test4();
}
