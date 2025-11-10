#include <cstdio>
#include <cstdarg>
#include "000.hpp"

void sub1(int x, int y)
{
  int px = 1;

  for (int i = 0; i < y; ++i) {
    px *= x;
  }

  std::printf("sub1: %d\n", px);
}

void sub2(int n, ...)
{
  va_list list;
  int sum = 0;

  va_start(list, n);

  for (int i = 0; i < n; ++i) {
    sum += va_arg(list, int);
  }

  va_end(list);
  std::printf("sub2: %d\n", sum);
}

void sub3(int n, ...)
{
  va_list list;
  int sum = 0;

  va_start(list, n);

  for (int i = 0; i < n; ++i) {
    sum += va_arg(list, int);
  }

  va_end(list);
  std::printf("sub3: %d\n", sum);
}
