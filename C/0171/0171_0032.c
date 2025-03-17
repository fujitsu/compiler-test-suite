#include <stdio.h>

void test_madd_cp_r4(float * restrict a, float * restrict b, 
		     float * restrict c, float d[10], int n) {
  int i;
  
  for(i=0; i<n; i=i+4) {
    d[i] = 1.;
    d[i+1] = 2.;
    d[i+2] = 3.;
    d[i+3] = 4.;
  }
  
  return;
}

void test_madd_cp_r8(double * restrict a, double * restrict b, 
		     double * restrict c, double d[10], int n) {
  int i;
  
  for(i=0; i<n; i=i+4) {
    d[i] = 1.;
    d[i+1] = 2.;
    d[i+2] = 3.;
    d[i+2] = 4.;
  }
  
  return;
}

int main(void) {
  float  fa[10] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0};
  float  fb[10] = {10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0};
  float  fc[10] = {1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0};
  float  fd[10] = {0.0  ,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
  double da[10] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0};
  double db[10] = {10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0};
  double dc[10] = {1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0};
  double dd[10] = {0.0  ,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
  int i;

  test_madd_cp_r4(fa, fb, fc, fd, 10);
  test_madd_cp_r8(da, db, dc, dd, 10);
  
  for(i=0; i<10; i++) {
    printf("fd[%d] = %f\n", i, fd[i]);
  }
  for(i=0; i<10; i++) {
    printf("dd[%d] = %f\n", i, dd[i]);
  }
  
  return 0;
}
