#include <stdlib.h>
#include <stdio.h>

#define MAIN int main
#define OK_PRINT puts("OK")
#define ERROR_PRINT puts("NG")
#define PA_START
#define PA_STOP

#if defined(NOMOD)
#define n 64
#else
#define n 65
#endif

void init(float *a,float *b,float *c,float *d,unsigned long int *la,float *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = i;
    c[i] = 0;
    d[i] = i;
    if (i < n/2) {
      b[i] = i;
      d[i] = i;
      la[i] = i;
      res[i] = 0;
    } else {
      b[i] = i+1;
      la[i] = i;
      res[i] = i;
    }      
  }
}

void test(float *a,float *b,float *c,float *d,unsigned long int *la) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if ( a[i] != b[i]) {
      if (la[i]) {
        c[i] = d[i];
      }
    }
  }
  PA_STOP
}

MAIN() {
  float a[n],b[n],c[n],d[n],res[n];
  unsigned long int la[n];
  int i;
  init (a,b,c,d,la,res);
  for (int i = 0;i < 2;i++ ) {
    test (a,b,c,d,la);
  }
  for (i = 0;i < n;i++) {
    if (c[i] != res[i]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
