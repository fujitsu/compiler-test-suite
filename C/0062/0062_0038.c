
#include <stdio.h>
#include <math.h>

static void datan_lib(double * const restrict x, const double * const restrict a, const int n);
static void datan_ilfunc(double * const restrict x, const double * const restrict a, const int n);

static union { unsigned long long ull; double d; } pinf = { 0x7FF0000000000000ULL };
static union { unsigned long long ull; double d; } minf = { 0xFFF0000000000000ULL };
static union { unsigned long long ull; double d; } pnan = { 0x7FFFFFFFFFFFFFFFULL };
static union { unsigned long long ull; double d; } mnan = { 0xFFFFFFFFFFFFFFFFULL };

int main(void) {
  double d[72] = { 0.0 };
  double lib[72] = { 0.0 };
  double ilfunc[72] = { 0.0 };
  int i,j;
  
  for(i=0; (double)(i)*0.125 < 4.25; i++) {
    d[i] = (double)(i)*0.125;
  }
  d[i++] = pinf.d;
  d[i++] = pnan.d;
  for(j=0; (double)(j)*0.125 < 4.25; i++,j++) {
    d[i] = -(double)(j)*0.125;
  }
  d[i++] = minf.d;
  d[i++] = mnan.d;
  
  datan_lib(lib, d, 72);
  datan_ilfunc(ilfunc, d, 72);
  
  for(i=0; i<72; i++) {
    if (fabs(lib[i]-ilfunc[i]) > 0.000000000000001) {
      printf("NG x=%25.18le, lib=%25.18le, ilfunc=%25.18le, diff=%25.18le\n", 
	     d[i], lib[i], ilfunc[i], fabs(lib[i]-ilfunc[i]));
    }
  }
  printf(" finish\n");
  return 0;
}

static void datan_lib(double * const restrict x, const double * const restrict a, const int n) {
  double (*atan_p)(const double) = atan;
  int i;
  for(i=0; i<n; i++) {
    x[i] = (*atan_p)(a[i]);
  }
  return;
}

static void datan_ilfunc(double * const restrict x, const double * const restrict a, const int n) {
  double (*atan_p)(const double) = atan;
  int i;
  for(i=0; i<n; i++) {
    x[i] = atan(a[i]);
  }
#if !defined(__IE_DEBUG__)
  for(i=0; i<n; i++) {
    if(isinf(a[i]) && isnan(x[i])) {
      x[i] = (*atan_p)(a[i]);
    }
  }
#endif
  return;
}
