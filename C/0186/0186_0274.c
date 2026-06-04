#include <stdio.h>
#include <math.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 11
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE a  [N][N][N],b  [N][N][N], c[N];
DATA_TYPE ans[N][N][N],res[N][N][N];

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(int n) {
  int i,j,k;
#pragma omp parallel for private(n)
  for(i=0;i<N;++i) {
    n = c[i];
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        ans[i][j][k] = a[i][j][k] + b[i][j][k];
        n = a[i][j][k];
      }
    }
    a[i][0][0] = n;
  }
}

#if !defined(ASM_ONLY)

static void master(int n) {
  int i,j,k;
#pragma omp parallel for private(n)
  for(i=0;i<N;++i) {
    n = c[i];
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        res[i][j][k] = a[i][j][k] + b[i][j][k];
        n = a[i][j][k];
      }
    }
    a[i][0][0] = n;
  }
}

static void check(void) {
  int i,j,k;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        if(!is_fequal(ans[i][j][k],res[i][j][k])) {
          printf("%d %d, %f %f\n", i, j, res[i][j][k],ans[i][j][k]);
        }
      }
    }
  }
  puts("OK");
}

static void init(void) {
  int i,j,k;
  for(i=0;i<N;++i) {
    c[i] = cosf(i*1.1);
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        b[i][j][k]   = cosf(i*4.3+1) + cos(k*0.2+j);
        ans[i][j][k] = 1-sinf(i*2.0-0.3*j+k);
        res[i][j][k] = ans[i][j][k];
      }
    }
  }
}
static void init2(void) {
  int i,j,k;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        a[i][j][k]   = sinf(i*1.1)*cosf(j*2.2-k);
      }
    }
  }
}

int main(void) {
  init();
  init2();
  master(5);
  init2();
  sub(5);
  check();
}
#endif
