#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ERR_S (1.0E-7)
#define ERR_D (1.0E-14)
#define EQUAL_S(a, b) ((a==0.0 && b<=ERR_S) || (fabs(a-b)/fabs(a))<=ERR_S)
#define EQUAL_D(a, b) ((a==0.0 && b<=ERR_D) || (fabs(a-b)/fabs(a))<=ERR_D)

#define N 64

double src1[N], src2[N], src1_res[N], src2_res[N];
double dest1[N], dest2[N], dest1_res[N], dest2_res[N];

void target_i1(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  signed char i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}

void target_i2(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  short int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}



void target_i4(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}


void target_i8(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  long long int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}


void target_u1(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  unsigned char i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}

void target_u2(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  unsigned short int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}



void target_u4(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  unsigned int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}


void target_u8(double *restrict dest1, double *restrict dest2,
	    double* restrict src1, double * restrict src2) {
  unsigned long long int i;
  for(i=0;i<N;++i) {
    dest1[i] = src1[i] + src2[i];
    dest2[i] = src1[i] * src2[i];
  }
}


void base(double *restrict dest1_res, double * restrict dest2_res,
	    double* restrict src1_res, double * restrict src2_res) {
  int i;
  for(i=0;i<N;++i) {
    dest1_res[i] = src1_res[i] + src2_res[i];
    dest2_res[i] = src1_res[i] * src2_res[i];
  }
}


void init(double *src1, double *src2) {
  int i;
  for(i=0;i<N;++i) {
    src1[i] = i + 0.3;
    src2[i] = i*2 - 0.3235;
  }
}


void check(double *dest1, double *dest2, double *dest1_res, double *dest2_res) {
  int i;

#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(!EQUAL_D(dest1[i], dest1_res[i]) || !EQUAL_D(dest2[i], dest2_res[i])) {
      printf("%d: (%f %f), (%f %f) \n", i, dest1[i], dest1_res[i], dest2[i], dest2_res[i]);
    }
  }
  puts("OK");
}

int main(void) {
  init(src1_res, src2_res);
  base(dest1_res, dest2_res, src1_res, src2_res);

  init(src1, src2);
  target_i1(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_i2(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_i4(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_i8(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_u1(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_u2(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_u4(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  init(src1, src2);
  target_u8(dest1, dest2, src1, src2);
  check(dest1, dest2, dest1_res, dest2_res);

  return 0;
}
