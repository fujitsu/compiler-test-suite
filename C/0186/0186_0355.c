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
  DATA_TYPE val[N][N];
} ;
struct st a,b,ans,res;

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      ans.val[i][j] = a.val[i][j] + b.val[i][j];
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      res.val[i][j] = a.val[i][j] + b.val[i][j];
    }
  }
}

static void check(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      if(!is_fequal(ans.val[i][j],res.val[i][j])) {
        printf("%d %d, %f %f\n", i, j, res.val[i][j],ans.val[i][j]);
      }
    }
  }
  puts("OK");
}

static void init(void) {
  int i,j;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      a.val[i][j]   = sinf(i*1.1)*cosf(i*2.2);
      b.val[i][j]   = cosf(i*4.3+1);
      ans.val[i][j] = 1-sinf(i*2.0-0.3);
      res.val[i][j] = ans.val[i][j];
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
