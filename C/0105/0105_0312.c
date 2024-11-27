#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void glo(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}

void pro(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}

void pro2(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}

void pro3(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}

void pro4(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}


void loop(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}

void loop2(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i = 0;
  for(i = 0; i < N; i++) {
    if(m[i] != 0) {
      a[i] = b[k];
    }
  }
}


void init(int * m, double * b) {
  int i;
  for (i = 0; i < N; i++) {
    m[i] = 0;
    b[i] = (double)i;
  }
  for (i = 0; i < N; i+=2) {
    m[i] = 1;
  }
}

int main() {
  int m[N], k;
  double a[N], b[N];
  k = 10;

  init(m, b);

  glo(m,a,b,k);
  pro(m,a,b,k);
  pro2(m,a,b,k);
  pro3(m,a,b,k);
  pro4(m,a,b,k);
  loop(m,a,b,k);
  loop2(m,a,b,k);

  PRINT_OK;

  return 0;
}
