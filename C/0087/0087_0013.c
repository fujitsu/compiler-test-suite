#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ERR_S (1.0E-7)
#define ERR_D (1.0E-14)
#define EQUAL_S(a, b) ((a==0.0 && b<=ERR_S) || (fabs(a-b)/fabs(a))<=ERR_S)
#define EQUAL_D(a, b) ((a==0.0 && b<=ERR_D) || (fabs(a-b)/fabs(a))<=ERR_D)

#define N 199


void target(long long int *restrict dest1, long long int *restrict dest2,
	    long long int* restrict src1, long long int * restrict src2) {
  int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    if ( i%1 == 0) {
      dest2[i] = src1[i] * src2[i];
      dest1[i] = src1[i] - src2[i] * dest2[i];
    }
    dest2[i] = dest1[i] + dest2[i];
  }
}


void base(long long int *restrict dest1, long long int * restrict dest2,
	    long long int* restrict src1, long long int * restrict src2) {
  int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    if ( i%1 == 0) {
      dest2[i] = src1[i] * src2[i];
      dest1[i] = src1[i] - src2[i] * dest2[i];
    }
    dest2[i] = dest1[i] + dest2[i];
  }
}


void init(long long int *src1, long long int *src2) {
  int i;
  for(i=0;i<N;++i) {
    src1[i] = i + 0.3;
    src2[i] = i*2 - 0.3235;
  }
}


void check(long long int *dest1, long long int *dest2, long long int *dest1_res, long long int *dest2_res) {
  int i;

#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if((dest1[i]!=dest1_res[i]) ||(dest2[i] != dest2_res[i])) {
      printf("%d: (%ld %ld), (%ld %ld) \n", i, dest1[i], dest1_res[i], dest2[i], dest2_res[i]);
    }
  }
  puts("OK");
}

int main(void) {
  long long int src1[N], src2[N], src1_res[N], src2_res[N];
  long long int dest1[N], dest2[N], dest1_res[N], dest2_res[N];

  init(src1, src2);
  target(dest1, dest2, src1, src2);

  init(src1_res, src2_res);
  base(dest1_res, dest2_res, src1_res, src2_res);

  check(dest1, dest2, dest1_res, dest2_res);

  return 0;
}
