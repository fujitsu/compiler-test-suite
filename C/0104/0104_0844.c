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

void init(unsigned int *a, unsigned int *b, unsigned int *res) {
  int i;
  *res = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = (unsigned int)i;
    b[i] = (unsigned int)i;
    if (i > N/2) {
      *res = *res + (unsigned int)i;
    }
  }
}

void test(unsigned int * restrict a, unsigned int * restrict b, unsigned int * restrict dest) {
  int i;
  unsigned int tmp = 0;
  for(i = 0;i < N; i++) {
    if (b[i] > N/2) {
      tmp = tmp + a[i];
    }
  }
  *dest = tmp;
}

int main() {
  unsigned int a[N],b[N];
  unsigned int dest, res;
  int i;
  for (i = 0; i < 2; i++) {
    init (a,b,&res);
    test (a,b,&dest);
  }
  if (dest != res) {
    PRINT_NG;
  }

  PRINT_OK;
  return 0;
}
