#include <stdio.h>
#include <math.h>
#include <limits.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 31
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE a  [N][N],b  [N][N];
DATA_TYPE ans[N][N],res[N][N];
DATA_TYPE c  [N], d[N];

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG 2
#endif


void sub(int flag) {
  int i,j;
  int upper = INT_MAX;
  if (flag == 0) { return ; }
  for(i=0;i<upper;++i) {
    for(j=0;j<upper;++j) {
      int ii = i%N;
      int jj = j%N;
      ans[ii][jj] = a[ii][jj] + b[ii][jj] + c[ii];
    }
  }
}

#if !defined(ASM_ONLY)

static void master(int flag) {
  int i,j;
  int upper = INT_MAX;
  if (flag == 0) { return ; }

  for(i=0;i<upper;++i) {
    for(j=0;j<upper;++j) {
      int ii = i%N;
      int jj = j%N;
      ans[ii][jj] = a[ii][jj] + b[ii][jj] + c[ii];
    }
  }
}

int main(void) {
  sub(0);
  master(0);
  puts("comp only");
}
#endif
