#include <stdio.h>
#include <math.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 16
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE a  [N][N][N],b  [N][N][N];
DATA_TYPE ans[N][N][N],res[N][N][N];

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(void) {
  int i,j,k;

  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        ans[i][j][k] = a[i][j][k] * b[i][j][k];
      }
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  int i,j,k;

  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        res[i][j][k] = a[i][j][k] * b[i][j][k];
      }
    }
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
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
        a[i][j][k]   = sinf(i*1.1)*cosf(j*2.2-k);
        b[i][j][k]   = cosf(i*4.3+1) + cos(k*0.2+j);
        ans[i][j][k] = 1-sinf(i*2.0-0.3*j+k);
        res[i][j][k] = ans[i][j][k];
      }
    }
  }
}

int main(void) {
  init();
  master();
  sub();
  check();
}
#endif
