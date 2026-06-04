#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 17
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE **a, **b,**ans,**res;

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      ans[i][j] = a[i][j] + b[i][j];
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      res[i][j] = a[i][j] + b[i][j];
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
  a   = (DATA_TYPE**)malloc(sizeof(DATA_TYPE*)*N);
  b   = (DATA_TYPE**)malloc(sizeof(DATA_TYPE*)*N);
  res = (DATA_TYPE**)malloc(sizeof(DATA_TYPE*)*N);
  ans = (DATA_TYPE**)malloc(sizeof(DATA_TYPE*)*N);
  for(i=0;i<N;++i) {
    a  [i] = (DATA_TYPE*)malloc(sizeof(DATA_TYPE)*N);
    b  [i] = (DATA_TYPE*)malloc(sizeof(DATA_TYPE)*N);
    res[i] = (DATA_TYPE*)malloc(sizeof(DATA_TYPE)*N);
    ans[i] = (DATA_TYPE*)malloc(sizeof(DATA_TYPE)*N);
  }
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      a[i][j]   = sinf(i*1.1)*cosf(i*2.2);
      b[i][j]   = cosf(i*4.3+1);
      ans[i][j] = 1-sinf(i*2.0-0.3);
      res[i][j] = ans[i][j];
    }
  }
}

static void fin(void) {
  int i;
  for(i=0;i<N;++i) {
    free(a  [i]);
    free(b  [i]);
    free(res[i]);
    free(ans[i]);
  }
  free(a  );
  free(b  );
  free(res);
  free(ans);

}

int main(void) {
  init();
  master();
  sub();
  check();
  fin();
}
#endif
