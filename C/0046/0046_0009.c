
#include <stdio.h>

#define index_exchange(a,b,c,n) \
  { \
    int i,j,k; \
    for (i=0; i<n; ++i) { \
      for (j=0; j<n; ++j) { \
        for (k=0; k<n; ++k) { \
  	  a[k][j][i] = a[k][j][i] + b[k][j][i]*c[k][j][i]; \
        } \
      } \
    } \
  }

#define initarray(a,n,value) \
  { \
    int i, j, k; \
    for (i=0; i<n; ++i) { \
      for (j=0; j<n; ++j) { \
        for (k=0; k<n; ++k) { \
          a[i][j][k] = value; \
        } \
      } \
    } \
  }

#define sum(a,n,result) \
  { \
    int i, j, k; \
    result = 0.0; \
    for (i=0; i<n; ++i) { \
      for (j=0; j<n; ++j) { \
        for (k=0; k<n; ++k) { \
  	  result = result + a[k][j][i]; \
        } \
      } \
    } \
  }

int main(void)
{
  const int n=30;
  double r1[30][30][30],r2[30][30][30],r3[30][30][30];
  long long int a1[30][30][30],a2[30][30][30],a3[30][30][30];
  double r8res;
  long long int i8res;
  const double r8ans = 162000.0;
  const long long int i8ans = 162000LL;
  int mm;
  
  mm = 1;

  
  initarray(r1,n,2.0);
  initarray(r2,n,2.0);
  initarray(r3,n,2.0);
  index_exchange(r1,r2,r3,n);
  sum(r1,n,r8res);
  if (r8res != r8ans) {
    mm = 0;
    (void)printf("ng : %lf != %lf\n", r8res, r8ans);
  }

  
  initarray(a1,n,2LL);
  initarray(a2,n,2LL);
  initarray(a3,n,2LL);
  index_exchange(a1,a2,a3,n);
  sum(a1,n,i8res)
  if (i8res != i8ans) {
    mm = 0;
    (void)printf("ng : %lld != %lld\n", i8res, i8ans);
  }

  if (mm != 0) {
    (void)printf("ok\n");
  }
  return 0;
}
