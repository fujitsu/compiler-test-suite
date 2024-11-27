
#include <stdio.h>
#include <math.h>

static void datan2_lib(double * const restrict x, 
		       const double * const restrict b, 
		       const int nb,
		       const double * const restrict a, 
		       const int na);
static void datan2_ilfunc(double * const restrict x, 
			  const double * const restrict b, 
			  const int nb,
			  const double * const restrict a, 
			  const int na);

static union { unsigned long long ull; double d; } pinf = { 0x7FF0000000000000ULL };
static union { unsigned long long ull; double d; } minf = { 0xFFF0000000000000ULL };
static union { unsigned long long ull; double d; } pnan = { 0x7FFFFFFFFFFFFFFFULL };
static union { unsigned long long ull; double d; } mnan = { 0xFFFFFFFFFFFFFFFFULL };

int main(void) {
  double y[72] = { 0.0 };
  double x[10] = { 0.0, 0.5, 1.0, pinf.d, pnan.d, -0.0, -0.5, -1.0, minf.d, mnan.d };
  double lib[2][72][10] = { 0.0 };
  double ilfunc[2][72][10] = { 0.0 };
  int i,j;
  
  for(i=0; (double)(i)*0.03125 < 1.0625; i++) {
    y[i] = (double)(i)*0.03125;
  }
  y[i++] = pinf.d;
  y[i++] = pnan.d;
  for(j=0; (double)(j)*0.03125 < 1.0625; i++,j++) {
    y[i] = -(double)(j)*0.03125;
  }
  y[i++] = minf.d;
  y[i++] = mnan.d;
  
  datan2_lib((double *)lib, y, 72, x, 10);
  datan2_ilfunc((double *)ilfunc, y, 72, x, 10);
  
  for(i=0; i<72; i++) {
    for(j=0; j<10; j++) {
#if defined (__HPC_ACE2__)
      if (y[i] == 0.0 && x[j] == -0.0) { continue; }
#endif
      if (fabsf(lib[0][i][j]-ilfunc[0][i][j]) > 0.00000000000001) {
	printf("y=%25.18le, x=%25.18le, lib=%25.18le, ilfunc=%25.18le, diff=%25.18le\n", 
	       y[i], x[j], lib[0][i][j], ilfunc[0][i][j], fabsf(lib[0][i][j]-ilfunc[0][i][j]));
      }
    }
  }
  for(i=0; i<72; i++) {
    for(j=0; j<10; j++) {
#if defined (__HPC_ACE2__)
      if (y[i] == 0.0 && x[j] == -0.0) { continue; }
#endif
      if (fabsf(lib[1][i][j]-ilfunc[1][i][j]) > 0.00000000000001) {
	printf("y=%25.18le, x=%25.18le, lib=%25.18le, ilfunc=%25.18le, diff=%25.18le\n", 
	       x[j], y[i], lib[1][i][j], ilfunc[1][i][j], fabsf(lib[1][i][j]-ilfunc[1][i][j]));
      }
    }
  }
  
  printf("  finish\n");
  return 0;
}

static void datan2_lib(double * const restrict x, 
		       const double * const restrict b, 
		       const int nb,
		       const double * const restrict a, 
		       const int na) {
  double (*atan2_p)(const double, const double) = atan2;
  int i,j;
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*i+j] = (*atan2_p)(b[i], a[j]);
    }
  }
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*nb+na*i+j] = (*atan2_p)(a[j], b[i]);
    }
  }
  return;
}

static void datan2_ilfunc(double * const restrict x, 
			  const double * const restrict b, 
			  const int nb,
			  const double * const restrict a, 
			  const int na) {
  double (*atan2_p)(const double, const double) = atan2;
  int i,j;
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*i+j] = atan2(b[i], a[j]);
    }
  }
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      x[na*nb+na*i+j] = atan2(a[j], b[i]);
    }
  }
#if !defined(__IE_DEBUG__)
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      if((isinf(a[j]) || isinf(b[i])) && isnan(x[na*i+j])) {
	x[na*i+j] = (*atan2_p)(b[i], a[j]);
      }
      if((a[j] == 0.0 || a[j] == -0.0) && (b[i] == 0.0 || b[i] == -0.0) && isnan(x[na*i+j])) {
	x[na*i+j] = (*atan2_p)(b[i], a[j]);
      }
    }
  }
  for(i=0; i<nb; i++) {
    for(j=0; j<na; j++) {
      if((isinf(a[j]) || isinf(b[i])) && isnan(x[na*nb+na*i+j])) {
	x[na*nb+na*i+j] = (*atan2_p)(a[j], b[i]);
      }
      if((a[j] == 0.0 || a[j] == -0.0) && (b[i] == 0.0 || b[i] == -0.0) && isnan(x[na*nb+na*i+j])) {
	x[na*nb+na*i+j] = (*atan2_p)(a[j], b[i]);
      }
    }
  }
#endif
  return;
}
