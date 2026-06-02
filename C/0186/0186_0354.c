#include <stdio.h>
#include <math.h>

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

struct st{
  DATA_TYPE val;
} ;
struct st a[N][N],b[N][N];
struct st ans[N][N],res[N][N];

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      ans[i][j].val = a[i][j].val + b[i][j].val;
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      res[i][j].val = a[i][j].val + b[i][j].val;
    }
  }
}

static void check(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      if(!is_fequal(ans[i][j].val,res[i][j].val)) {
        printf("%d %d, %f %f\n", i, j, res[i][j].val,ans[i][j].val);
      }
    }
  }
  puts("OK");
}

static void init(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      a[i][j].val   = sinf(i*1.1)*cosf(i*2.2);
      b[i][j].val   = cosf(i*4.3+1);
      ans[i][j].val = 1-sinf(i*2.0-0.3);
      res[i][j].val = ans[i][j].val;
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
