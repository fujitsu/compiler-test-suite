
#include <stdio.h>
#include <math.h>

static void atan_lib(float * const restrict x, const float * const restrict a, const int n);
static void atan_ilfunc(float * const restrict x, const float * const restrict a, const int n);

static union { unsigned int ui; float f; } pinf = { 0x7F800000U };
static union { unsigned int ui; float f; } minf = { 0xFF800000U };
static union { unsigned int ui; float f; } pnan = { 0x7FC00000U };
static union { unsigned int ui; float f; } mnan = { 0xFFC00000U };

int main(void) {
  float f[72] = { 0.0f };
  float lib[72] = { 0.0f };
  float ilfunc[72] = { 0.0f };
  int i,j;
  
  for(i=0; (float)(i)*0.125f < 4.25f; i++) {
    f[i] = (float)(i)*0.125f;
  }
  f[i++] = pinf.f;
  f[i++] = pnan.f;
  for(j=0; (float)(j)*0.125f < 4.25f; i++,j++) {
    f[i] = -(float)(j)*0.125f;
  }
  f[i++] = minf.f;
  f[i++] = mnan.f;
  
  atan_lib(lib, f, 72);
  atan_ilfunc(ilfunc, f, 72);
  
  for(i=0; i<72; i++) {
    if (fabsf(lib[i]-ilfunc[i]) > 0.000001) {
      printf("NG x=%15.8le, lib=%15.8le, ilfunc=%15.8le, diff=%15.8le\n", 
	     f[i], lib[i], ilfunc[i], fabsf(lib[i]-ilfunc[i]));
    }
  }
  printf("test  finish\n");
  return 0;
}

static void atan_lib(float * const restrict x, const float * const restrict a, const int n) {
  float (*atanf_p)(const float) = atanf;
  int i;
  for(i=0; i<n; i++) {
    x[i] = (*atanf_p)(a[i]);
  }
  return;
}

static void atan_ilfunc(float * const restrict x, const float * const restrict a, const int n) {
  float (*atanf_p)(const float) = atanf;
  int i;
  for(i=0; i<n; i++) {
    x[i] = atanf(a[i]);
  }
#if !defined(__IE_DEBUG__)
  for(i=0; i<n; i++) {
    if(isinf(a[i]) && isnan(x[i])) {
      x[i] = (*atanf_p)(a[i]);
    }
  }
#endif
  return;
}
