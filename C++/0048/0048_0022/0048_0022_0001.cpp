#include <cstdio>

void sub1()
{
#define N 10
  int a[N] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int b[N] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int c[N] = {};

  _Pragma("omp parallel for")
  for (int i = 0; i < N; ++i) {
    c[i] = a[i] + b[i];
  }

  for (int i = 0; i < N; ++i) {
    std::printf("%d ", c[i]);
  }
  std::puts("");
}
