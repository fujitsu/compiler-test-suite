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

void init(unsigned char *a,unsigned char *b,unsigned char *c,unsigned char *res) {

  for (int i = 1; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    res[i] = 1;
  }
}

void test(unsigned char *a,unsigned char *b,unsigned char *c) {
  PA_START
  for(int i = 1;i < n;i++ ) {
    a[i] = b[i] / c[i];
  }
  PA_STOP
}

MAIN() {
  unsigned char a[n],b[n],c[n],res[n];
  int i;
  init (a,b,c,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b,c);
  }
  for (i = 1;i < n;i++) {
    if (a[i] != res[i]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
