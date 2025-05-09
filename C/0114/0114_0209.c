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

void init(char *a,char *b,char *res) {
  char i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    res[i] = i + i ;
  }
}

void test(char *a,char *b) {
  char i;
  PA_START
  for(i = 0;i < n;i++ ) {
    a[i] = b[i] + i;
  }
  PA_STOP
}

MAIN() {
  char a[n],b[n],res[n];
  char i;
  init (a,b,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b);
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
