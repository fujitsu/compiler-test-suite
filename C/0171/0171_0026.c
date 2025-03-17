
void test_thr_optimize_001(int x[], int y[], int a[], int b[], int c[], const int n) {
  int i;
  
  for(i=0; i<n; i++) {
    x[i] = (1 - a[i]) + (b[i] - 1);
  }
  
  return;
}

int main(void) {
  int i4_x[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_y[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_a[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_b[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  int i4_c[10] = {1,    2,    3,    4,    5,    6,    7,    8,    9,    10};
  
  test_thr_optimize_001(i4_x, i4_y, i4_a, i4_b, i4_c, 10);
  
  return 0;
}

