#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ERR_S (1.0E-7)
#define ERR_D (1.0E-14)
#define EQUAL_S(a, b) ((a==0.0 && b<=ERR_S) || (fabs(a-b)/fabs(a))<=ERR_S)
#define EQUAL_D(a, b) ((a==0.0 && b<=ERR_D) || (fabs(a-b)/fabs(a))<=ERR_D)

#define N 1323


void target(float *restrict dest1, float *restrict dest2,
	    float* restrict src1, float * restrict src2) {
  int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
    if ( i%2 == 0) {
      dest1[i] = src1[i] - src2[i] * dest2[i];
    }
  }
}


void base(float *restrict dest1, float * restrict dest2,
	    float* restrict src1, float * restrict src2) {
  int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
    if ( i%2 == 0) {
      dest1[i] = src1[i] - src2[i] * dest2[i];
    }
  }
}


void init(float *src1, float *src2) {
  int i;
  for(i=0;i<N;++i) {
    src1[i] = i + 0.3;
    src2[i] = i*2 - 0.3235;
  }
}


void check(float *dest1, float *dest2, float *dest1_res, float *dest2_res) {
  int i;

#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(!EQUAL_S(dest1[i], dest1_res[i]) || !EQUAL_S(dest2[i], dest2_res[i])) {
      printf("%d: (%f %f), (%f %f) \n", i, dest1[i], dest1_res[i], dest2[i], dest2_res[i]);
    }
  }
  puts("OK");
}

int main(void) {
  float src1[N], src2[N], src1_res[N], src2_res[N];
  float dest1[N], dest2[N], dest1_res[N], dest2_res[N];

  init(src1, src2);
  target(dest1, dest2, src1, src2);

  init(src1_res, src2_res);
  base(dest1_res, dest2_res, src1_res, src2_res);

  check(dest1, dest2, dest1_res, dest2_res);

  return 0;
}
