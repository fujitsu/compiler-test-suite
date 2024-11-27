#include <stdio.h>
#include <stdlib.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define POS 1

void init(unsigned char *a, unsigned char *res, unsigned char *c) {
  int i,tmp;

  tmp = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i;
    if (i%4 == POS) {
      c[i] = 2;
    } else {
      c[i] = 1;
      tmp = i;
    }
  }
  *res = a[tmp];
}

void test(unsigned char * restrict a, unsigned char * restrict dest, unsigned char * restrict c, unsigned char x) {
  int i;
  unsigned char tmp = 0;
  for(i = 0;i < N; i++) {
    if (c[i] == x) {
      tmp = a[i];
    }
  }
  *dest = tmp;
}

int main() {
  unsigned char a[N];
  unsigned char dest, res;
  unsigned char c[N];
  int i;
  for (i = 0; i < 2; i++) {
    init (a,&res,c);
    test (a,&dest,c,1);
  }
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
