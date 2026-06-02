#include <stdio.h>
#include <math.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 7
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a,b) ((a==0 && fabs(b) < ferr) || (b==0 && fabs(a) < ferr) || (fabs(a-b)/fabs(a) < ferr))
#define is_dequal(a,b) ((a==0 && abs(b)  < derr) || (b==0 && abs(a)  < derr) || (abs(a-b)/abs(a)   < derr))

#define DATA_TYPE float

DATA_TYPE a  [N][N][N][N],  b[N][N][N][N];
DATA_TYPE ans[N][N][N][N],res[N][N][N][N];

#if defined(OCL_ARG_NUM)
#define OCL_ARG OCL_ARG_NUM
#else
#define OCL_ARG  2
#endif
#define OCL_ARG2 3


void sub(void) {
  int i,j,k,l;

  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  a[i][j][k][l] = a[i][j][k][l] * b[i][j][k][l];
	}
      }
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  ans[i][j][k][l] = a[i][j][k][l] * b[i][j][k][l];
	}
      }
    }
  }
}

#if !defined(ASM_ONLY)

static void master(void) {
  int i,j,k,l;

  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  a[i][j][k][l] = a[i][j][k][l] * b[i][j][k][l];
	}
      }
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  res[i][j][k][l] = a[i][j][k][l] * b[i][j][k][l];
	}
      }
    }
  }
}

static void check(void) {
  int i,j,k,l;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  if(!is_fequal(ans[i][j][k][l],res[i][j][k][l])) {
	    printf("%d %d, %f %f\n", i, j, res[i][j][k][l],ans[i][j][k][l]);
	  }
	}
      }
    }
  }
  puts("OK");
}

static void init(void) {
  int i,j,k,l;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  a[i][j][k][l] = sinf(i*1.1+l)*cosf(j*2.2-k);
	  b[i][j][k][l] = cosf(i*4.3+1+k) + cos(j-l);
	}
      }
    }
  }
}
static void init2(void) {
  int i,j,k,l;
  for(i=0;i<N;++i) {
    for(j=0;j<N;++j) {
      for(k=0;k<N;++k) {
	for(l=0;l<N;++l) {
	  ans[i][j][k][l] = 1-sinf(i*2.0-0.3*j+k*l);
	  res[i][j][k][l] = ans[i][j][k][l];
	}
      }
    }
  }
}

int main(void) {
  init();
  init2();
  master();
  init();
  sub();
  check();
}
#endif
