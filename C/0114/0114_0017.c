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

void init(signed int *a,signed int *b,signed int *c,signed int *res) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    res[i] = 0;
  }
#if defined(NOMOD)
  res[2] = 4288;
#else
  res[2] = 4420;
#endif
}

void test(signed int *a,signed int *b,signed int *c) {
  int i;
  PA_START
  for(i = 0;i < n;i++ ) {
    if (b[3] < n/2) {
      a[2] = a[2] + c[i] + 2;
    }
  }
  PA_STOP
}

MAIN() {
  signed int a[n],b[n],c[n],res[n];
  int i;
  init (a,b,c,res);
  for (i = 0;i < 2;i++ ) {
    test (a,b,c);
  }

    if (a[2] != res[2]) {
      goto NG;
    }

  OK_PRINT;
  goto OK;
  NG: ERROR_PRINT ;

    printf("%d %d \n",a[2],res[2]);

  OK:;
}
