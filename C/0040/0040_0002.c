#include <float.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

static bool dbl_is_equal(double a, double b);
#define n 47
      double zzz[n][n][n];
      double aaa[n][n][n];
      int i,j,k,i_err;

      void sub2(int k, int j) {
      double tmp;

#pragma omp parallel for private(tmp)
          for (i=0; i<n; i+=1){ 
            tmp = zzz[k][j][i]+zzz[k][j][i]+zzz[k][j][i];
            aaa[k][j][i] = sqrt(pow(tmp,2));
          }
      return;
      }

      void sub1 (int k) {

#pragma omp parallel for
        for (j=0; j<n; j+=1){ 
          sub2 (k,j);
        }
      return;
      }

int main() { 
      double c_zzz[n][n][n];
      double c_aaa[n][n][n];
      double tmp;

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            zzz[k][j][i]=k*100+j*10+i;
            aaa[k][j][i]=0.0;
            c_zzz[k][j][i]=k*100+j*10+i;
            c_aaa[k][j][i]=0.0;
          }
        }
      }

#pragma omp parallel for
      for (k=0; k<n; k+=1){ 
        sub1 (k);
      }

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            tmp = c_zzz[k][j][i]+c_zzz[k][j][i]+c_zzz[k][j][i];
            c_aaa[k][j][i] = sqrt(pow(tmp,2));
          }
        }
      }
      i_err=0;
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            if (!dbl_is_equal(aaa[k][j][i],c_aaa[k][j][i])){
	      i_err=1;
	      printf("aaa[%d][%d][%d] = %lf \n",k,j,i,aaa[k][j][i]);
	    }
          }
        }
      }
      if (i_err==0) {
        printf(" : OK\n");
      }else{
        printf(" : NG\n");
      }
      exit (0) ;
      }

static bool dbl_is_equal(double a, double b) {
  double diff;
  if( a == b ) {
    return true;
  }
  if( isnan(a) || isnan(b) ) {
    return false;
  }
  if( isinf(a) && isinf(b) && a > 0 && b > 0
      || isinf(a) && isinf(b) && a < 0 && b < 0 ) {
    return true;
  }
  if( isinf(a) && a > 0 && b > DBL_MAX * (1.0 - sqrt(DBL_EPSILON)) 
      || isinf(a) && a < 0 && b < DBL_MIN * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b > 0 && a > DBL_MAX * (1.0 - sqrt(DBL_EPSILON))
      || isinf(b) && b < 0 && a < DBL_MIN * (1.0 - sqrt(DBL_EPSILON)) ) {
    return true;
  }
  if( a == 0.0 && fabs(b) < sqrt(DBL_EPSILON)
      || b == 0.0 && fabs(a) < sqrt(DBL_EPSILON) ) {
    return true;
  }
  diff = fabs((a - b)/a) ;
  return (diff < 1e-15);
}
