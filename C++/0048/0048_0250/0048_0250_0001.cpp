#include <cstdio>
#include <algorithm>

static bool compare(const int lhs,
		    const int rhs)
{
  return (lhs <= rhs) ? true: false;
}

void sub1()
{
  int ar[5] = { 2, 4, 1, 5, 3 };
  std::sort(&ar[0], &ar[5], compare);

  for (int i = 0; i < 5; ++i) {
    std::printf("%d\n", ar[i]);
  }
}

