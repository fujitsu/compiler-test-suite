
#include <stdio.h>
#include <math.h>

static void atan2_lib(float * const restrict x, 
		      const float * const restrict b, 
		      const int nb,
		      const float * const restrict a, 
		      const int na);
static void atan2_ilfunc(float * const restrict x, 
			 const float * const restrict b, 
			 const int nb,
			 const float * const restrict a, 
			 const int na);

static union { unsigned int ui; float f; } pinf = { 0x7F800000U };
static union { unsigned int ui; float f; } minf = { 0xFF800000U };
static union { unsigned int ui; float f; } pnan = { 0x7FC00000U };
static union { unsigned int ui; float f; } mnan = { 0xFFC00000U };

int main(void) {
  float y[72] = { 0.0f };
  float x[10] = { 0.0f, 0.5f, 1.0f, pinf.f, pnan.f, -0.0f, -0.5f, -1.0f, minf.f, mnan.f };
  float lib[2][72][10] = { 0.0f };
  float ilfunc[2][72][10] = { 0.0f };
  int i,j;
  
  for(i=0; (float)(i)*0.03125f < 1.0625f; i++) {
    y[i] = (float)(i)*0.03125f;
  }
  y[i++] = pinf.f;
  y[i++] = pnan.f;
  for(j=0; (float)(j)*0.03125f < 1.0625f; i++,j++) {
    y[i] = -(float)(j)*0.03125f;
  }
  y[i++] = minf.f;
  y[i++] = mnan.f;
  
  atan2_lib((float *)lib, y, 72, x, 10);
  atan2_ilfunc((float *)ilfunc, y, 72, x, 10);
  
  for(i=0; i<72; i++) {
    for(j=0; j<10; j++) {
#if defined (__HPC_ACE2__)
      if (y[i] == 0.0 && x[j] == -0.0) { continue; }
#endif
      if (fabsf(lib[0][i][j]-ilfunc[0][i][j]) > 0.000001) {
	printf("y=%15.8le, x=%15.8le, lib=%15.8le, ilfunc=%15.8le, diff=%15.8le\n", 
	       y[i], x[j], lib[0][i][j], ilfunc[0][i][j], fabsf(lib[0][i][j]-ilfunc[0][i][j]));
      }
    }
  }
  for(i=0; i<72; i++) {
    for(j=0; j<10; j++) {
#if defined (__HPC_ACE2__)
      if (y[i] == 0.0 && x[j] == -0.0) { continue; }
#endif
      if (fabsf(lib[1][i][j]-ilfunc[1][i][j]) > 0.000001) {
	printf("y=%15.8le, x=%15.8le, lib=%15.8le, ilfunc=%15.8le, diff=%15.8le\n", 
	       x[j], y[i], lib[1][i][j], ilfunc[1][i][j], fabsf(lib[1][i][j]-ilfunc[1][i][j]));
      }
    }
  }
  printf(" finish\n");
  return 0;
}

static void atan2_lib(float * const restrict x, 
		      const float * const restrict b, 
		      const int nb,
		      const float * const restrict a, 
		      const int na) {
  float (*atan2f_p)(const float, const float) = atan2f;
  int i,j;
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*i+j] = (*atan2f_p)(b[i], a[j]);
    }
  }
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*nb+na*i+j] = (*atan2f_p)(a[j], b[i]);
    }
  }
  return;
}

static void atan2_ilfunc(float * const restrict x, 
			 const float * const restrict b, 
			 const int nb,
			 const float * const restrict a, 
			 const int na) {
  float (*atan2f_p)(const float, const float) = atan2f;
  int i,j;
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*i+j] = atan2f(b[i], a[j]);
    }
  }
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*nb+na*i+j] = atan2f(a[j], b[i]);
    }
  }
#if !defined(__IE_DEBUG__)
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      if((isinf(a[j]) || isinf(b[i])) && isnan(x[na*i+j])) {
	x[na*i+j] = (*atan2f_p)(b[i], a[j]);
      }
      if((a[j] == 0.0f || a[j] == -0.0f) && (b[i] == 0.0f || b[i] == -0.0f) && isnan(x[na*i+j])) {
	x[na*i+j] = (*atan2f_p)(b[i], a[j]);
      }
    }
  }
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      if((isinf(a[j]) || isinf(b[i])) && isnan(x[na*nb+na*i+j])) {
	x[na*nb+na*i+j] = (*atan2f_p)(a[j], b[i]);
      }
      if((a[j] == 0.0f || a[j] == -0.0f) && (b[i] == 0.0f || b[i] == -0.0f) && isnan(x[na*nb+na*i+j])) {
	x[na*nb+na*i+j] = (*atan2f_p)(a[j], b[i]);
      }
    }
  }
#endif
  return;
}
