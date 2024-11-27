#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void init(unsigned char *a, unsigned char *b, unsigned char *res) {
  int i;
  if (UCHAR_MAX < N+4) {
    *res = 0;
  } else {
    *res = (unsigned char) ((N/3)>5)?5:N/3;
  }

#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned char)i+5;
    b[i] = (unsigned char)i;
  }
}

void test(unsigned char * restrict a, unsigned char * restrict b) {
  int i;
  for(i = 0;i < N; i++) {
    if (b[N/3] > a[i]) {
      b[N/3] = a[i];
    }
  }
}

int main() {
  unsigned char a[N],b[N];
  unsigned char res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,b,&res);
    test (a,b);
  }

  if (b[N/3] != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
