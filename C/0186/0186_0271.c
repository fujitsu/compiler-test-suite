#include <stdio.h>
#include <math.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 32
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE a  [N][N],b  [N][N];
DATA_TYPE ans[N][N],res[N][N];
DATA_TYPE t  [N];
#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(int n, int m) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<m;++j) {
      a[i][j]  = a[i][j] + b[i][j] - n * t[i];
    }
    for(j=n;j<N;++j) {
      t[i] = a[i][j];
      ans[i][j]  = t[i];
    }
  }
}

#if !defined(ASM_ONLY)

static void master(int n, int m) {
  int i,j;

  for(i=0;i<N;++i) {
    for(j=0;j<m;++j) {
      a[i][j]  = a[i][j] + b[i][j] - n * t[i];
    }
    for(j=n;j<N;++j) {
      t[i] = a[i][j];
      res[i][j]  = t[i];
    }
  }
}

static void check(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      if(!is_fequal(ans[i][j],res[i][j])) {
	printf("%d %d, %f %f\n", i, j, res[i][j],ans[i][j]);
      }
    }
  }
  puts("OK");
}

static void init(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      ans[i][j] = 1-sinf(i*2.0-0.3*j);
      res[i][j] = ans[i][j];
    }
  }
}

static void init2(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      a[i][j]   = sinf(i*1.1)*cosf(j*2.2);
      b[i][j]   = cosf(i*4.3+1) + cos(0.2+j);
    }
  }

  for(i=0;i<N;++i) {
    t[i] = sinf(i*1.0);
  }
}

int main(void) {
  init();
  init2();
  master(10, N/2);
  init2();
  sub(10, N/2);
  check();
}
#endif
