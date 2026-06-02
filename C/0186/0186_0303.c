#include <stdio.h>
#include <math.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 8
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float
#define INV_TYPE int

DATA_TYPE a  [N][N],b  [N][N];
DATA_TYPE ans[N][N],res[N][N];
DATA_TYPE c  [N], d[N];

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(void) {
  INV_TYPE i,j;
  for(i=0;i<N;i++) {
    for(j=0;j<N;j++) {
      ans[j][i] = a[j][i] + b[i][j];
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  INV_TYPE i,j;
  for(i=0;i<N;i++) {
    for(j=0;j<N;j++) {
      res[j][i] = a[j][i] + b[i][j];
    }
  }
}

static void check(void) {
  INV_TYPE i,j;
  for(i=0;i<N;i++) {
    for(j=0;j<N;j++) {
      if(!is_fequal(ans[i][j],res[i][j])) {
        printf("%d %d, %f %f\n", i, j, res[i][j],ans[i][j]);
      }
    }
  }
  puts("OK");
}

static void init(void) {
  int i,j;

  for(i=0;i<N;i+=1) {
    for(j=0;j<N;j+=1) {
      a[i][j]   = sinf(i*1.1)*cosf(i*2.2);
      b[i][j]   = cosf(i*4.3+1);
      ans[i][j] = 1-sinf(i*2.0-0.3);
      res[i][j] = ans[i][j];
    }
  }
}

static void init2(void) {
  int i;
  for(i=0;i<N;i+=1) {
    c[i] = 0;
    d[i] = sinf(i*2.0);
  }
}

int main(void) {
  init();
  init2();
  master();
  init2();
  sub();
  check();
}
#endif
