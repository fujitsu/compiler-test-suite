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

float init(int *a) {
  int i;
  float num;

  num = 0;
#pragma clang loop vectorize(disable)
  for (i = 0; i < N; i++) {
    a[i] = i;
    if (i > N/2) {
      num++;
    }
  }
  return num;
}

float test(int * restrict a) {
  int i;
  float m_num;
  m_num = 0;
  for(i = 0; i < N; i++) {
    if (a[i] > N/2) {
      m_num++;
    }
  }
  return m_num;
}

int main() {
  int a[N];
  int i;
  float m_num, res;

  res = init(a);
  for (i = 0; i < 2; i++ ) {
    m_num = test(a);
  }
  if (m_num != res) {
    PRINT_NG;
  }
  PRINT_OK;
  return 0;
}
