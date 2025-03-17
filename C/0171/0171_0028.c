#include <stdio.h>

void test_basic_madd_r4(float * restrict a, float * restrict b, 
			float * restrict c, float * restrict d, int n) {
  
  d[0] = (a[0] * b[0]) + c[0];
  d[1] = (a[1] * b[1]) + c[1];
  return;
}

void test_basic_madd_r8(double * restrict a, double * restrict b, 
			double * restrict c, double * restrict d, int n) {
  
  d[0] = (a[0] * b[0]) + c[0];
  d[1] = (a[1] * b[1]) + c[1];
  return;
}

int main(void) {
  float  fa[2] = {1.0, 2.0};
  float  fb[2] = {10.0, 9.0};
  float  fc[2] = {1.0, -1.0};
  float  fd[2] = {0.0, 0.0};
  double da[2] = {1.0, 2.0};
  double db[2] = {10.0, 9.0};
  double dc[2] = {1.0, -1.0};
  double dd[2] = {0.0, 0.0};
  int i;
  
  test_basic_madd_r4(fa, fb, fc, fd, 10);
  test_basic_madd_r8(da, db, dc, dd, 10);
  
  for(i=0; i<2; i++) {
    printf("fd[%d] = %f\n", i, fd[i]);
  }
  for(i=0; i<2; i++) {
    printf("dd[%d] = %f\n", i, dd[i]);
  }
  
  return 0;
}
