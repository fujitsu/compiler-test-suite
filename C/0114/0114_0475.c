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

void init(char *a,char *b,char *c,char *res) {

  for (int i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 1;
    res[i] = i - 1 ;
  }
}

void test(char *a,char *b,char *c) {
  PA_START
  for(int i = 0;i < n;i++ ) {
    a[i] = b[i] - c[i];
  }
  PA_STOP
}

MAIN() {
  char a[n],b[n],c[n],res[n];
  int i;
  init (a,b,c,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b,c);
  }
  for (i = 0;i < n;i++) {
    if (a[i] != res[i]) {
      goto NG;
    }
  }
  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;
  OK:;
}
