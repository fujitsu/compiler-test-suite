#include <stdio.h>
#include <math.h>

#define N 16

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE a  [N][N],b  [N][N];
DATA_TYPE ans[N][N],res[N][N];
int list[N] = { 0,8,
		1,9,
		2,10,
		3,11,
		4,12,
		5,13,
		6,14,
		7,15};

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(void) {
  int i,j;
  for(i=1;i<N;++i) {
    for(j=0;j<N-1;++j) {
      a[i][list[j]] = a[i][list[j]] + b[i][j];
    }
  }
  
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      ans[i][j] = a[i][j];
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  int i,j;
  for(i=1;i<N;++i) {
    for(j=0;j<N-1;++j) {
      a[i][list[j]] = a[i][list[j]] + b[i][j];
    }
  }
  
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      res[i][j] = a[i][j];
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
      ans[i][j] = 1-sinf(i*2.0-0.3);
      res[i][j] = ans[i][j];
    }
  }
}

static void init2(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      a[i][j]   = sinf(i*1.1)*cosf(i*2.2);
      b[i][j]   = cosf(i*4.3+1);
    }
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
