
#include <stdio.h>

void test_thr_optimize_002(int x[], int y[], int a[], int b[], int c[], int d[], const int n) {
  int t;
  int i;
  
  for(i=0; i<n; i++) {
    x[i] = a[i] * c[i] + a[i] * d[i] + b[i] * c[i] + b[i] * d[i];
  }
  
  for(i=0; i<n; i++) {
    t = a[i];
    y[i] = t + t*t + t*t*t + t*t*t*t + t*t*t*t*t;
  }
  
  return;
}

int main(void) {
  int i4_x[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_y[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_a[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_b[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_c[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_d[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i;
  
  test_thr_optimize_002(i4_x, i4_y, i4_a, i4_b, i4_c, i4_d, 10);
  
  printf("x = ");
  for(i=0; i<10; i++) {
    printf("%d  ", i4_x[i]);
  }
  printf("\n");

  printf("y = ");
  for(i=0; i<10; i++) {
    printf("%d  ", i4_y[i]);
  }
  printf("\n");

  return 0;
}

