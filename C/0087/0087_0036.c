#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ERR_S (1.0E-7)
#define ERR_D (1.0E-14)
#define EQUAL_S(a, b) ((a==0.0 && b<=ERR_S) || (fabs(a-b)/fabs(a))<=ERR_S)
#define EQUAL_D(a, b) ((a==0.0 && b<=ERR_D) || (fabs(a-b)/fabs(a))<=ERR_D)

#define N 16

double src1[N][N], src2[N][N], src1_res[N][N], src2_res[N][N];
double dest1[N][N], dest2[N][N], dest1_res[N][N], dest2_res[N][N];


void target_i4(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      dest1[i][j] = src1[i][j] + src2[i][j];
      dest2[i][j] = src1[i][j] * src2[i][j];
    }
  }
}


void base(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      dest1_res[i][j] = src1[i][j] + src2[i][j];
      dest2_res[i][j] = src1[i][j] * src2[i][j];
    }
  }
}


void init(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      src1[i][j] = i   + 0.3*j;
      src2[i][j] = i*2 - 0.3235*j;
    }
  }
}


void check(void) {
  int i,j;

#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      if(!EQUAL_D(dest1[i][j], dest1_res[i][j]) || !EQUAL_D(dest2[i][j], dest2_res[i][j])) {
	printf("%d: (%f %f), (%f %f) \n", i, dest1[i][j], dest1_res[i][j], dest2[i][j], dest2_res[i][j]);
      }
    }
  }
  puts("OK");
}

int main(void) {
  init();
  base();
  init();
  target_i4();
  check();
  return 0;
}
