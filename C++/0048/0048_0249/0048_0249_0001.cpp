#include <cstdio>
#include <cstdlib>

static int compare(const void *lhs, const void *rhs)
{
  int l = *(int *)lhs;
  int r = *(int *)rhs;

  if (l < r)  { return -1; }
  if (l == r) { return 0; }
  return 1;
}

void sub1()
{
  int ar[5] = { 2, 4, 1, 5, 3 };
  std::qsort(ar, 5, sizeof(int), compare);

  for (int i = 0; i < 5; ++i) {
    std::printf("%d\n", ar[i]);
  }
}

