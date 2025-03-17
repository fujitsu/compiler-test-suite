#include <array>
#include <cmath>
#include <iostream>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 17
#endif

#define derr 1E-14
#define ferr 1E-6
#define is_fequal(a, b)                                                        \
  ((a == 0 && fabs(b) < ferr) || (b == 0 && fabs(a) < ferr) ||                 \
   (fabs(a - b) / fabs(a) < ferr))
#define is_dequal(a, b)                                                        \
  ((a == 0 && abs(b) < derr) || (b == 0 && abs(a) < derr) ||                   \
   (abs(a - b) / abs(a) < derr))

#define DATA_TYPE float

DATA_TYPE a[N][N], b[N][N];
std::array<DATA_TYPE, N> ans, res;

static void sub(void) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      ans[i] = ans[i] + a[i][j] + b[j][i];
    }
  }
}

static void master(void) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      res[i] = res[i] + a[i][j] + b[j][i];
    }
  }
}

static void check(void) {
  int i;
  for (i = 0; i < N; ++i) {
    if (!is_fequal(ans[i], res[i])) {
      printf("%d %f %f\n", i, res[i], ans[i]);
    }
  }
  puts("OK");
}

static void init(void) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      a[i][j] = sinf(i * 1.1) * cosf(i * 2.2);
      b[i][j] = cosf(i * 4.3 + 1);
    }
    ans[i] = 1 - sinf(i * 2.0 - 0.3);
    res[i] = ans[i];
  }
}

int main(void) {
  init();
  master();
  sub();
  check();
}
