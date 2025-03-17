#include <stdio.h>

void test_basic_madd_r4(float * restrict a, float * restrict b, 
			float * restrict c, float * restrict d, int n) {
  
  d[0] = a[0];
  d[1] = a[1];
  return;
}

void test_basic_madd_r8(double * restrict a, double * restrict b, 
			double * restrict c, double * restrict d, int n) {
  
  d[0] = a[0];
  d[1] = a[1];
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
  
  test_basic_madd_r4(fa, fb, fc, fd, 10);
  test_basic_madd_r8(da, db, dc, dd, 10);
  
  if (fd[0] == fa[0] && fd[1] == fa[1]) {
    printf("ok\n");
  }
  if (dd[0] == da[0] && dd[1] == da[1]) {
    printf("ok\n");
  }
  
  return 0;
}
