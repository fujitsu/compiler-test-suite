#include <cmath>
#include <iostream>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 17
#endif

#define derr 1E-14
#define ferr 1E-7
#define is_fequal(a, b)                                                        \
  ((a == 0 && fabs(b) < ferr) || (b == 0 && fabs(a) < ferr) ||                 \
   (fabs(a - b) / fabs(a) < ferr))
#define is_dequal(a, b)                                                        \
  ((a == 0 && abs(b) < derr) || (b == 0 && abs(a) < derr) ||                   \
   (abs(a - b) / abs(a) < derr))

#define DATA_TYPE float

DATA_TYPE a[N][N], b[N][N];
DATA_TYPE ans[N][N], res[N][N];

static void sub(void) {
  int i, j;
  try {
    for (i = 0; i < N; ++i) {
      for (j = 0; j < N; ++j) {
        ans[i][j] = a[i][j] + b[i][j];
      }
    }
  } catch (...) {
    std::cout << "NG" << std::endl;
  }
}

static void master(void) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      res[i][j] = a[i][j] + b[i][j];
    }
  }
}

static void check(void) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      if (!is_fequal(ans[i][j], res[i][j])) {
        std::cout << i << j << res[i][j] << ans[i][j] << std::endl;
      }
    }
  }
  std::cout << "OK" << std::endl;
}

static void init(void) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      a[i][j] = sinf(i * 1.1) * cosf(i * 2.2);
      b[i][j] = cosf(i * 4.3 + 1);
      ans[i][j] = 1 - sinf(i * 2.0 - 0.3);
      res[i][j] = ans[i][j];
    }
  }
}

int main(void) {
  init();
  master();
  sub();
  check();
}
