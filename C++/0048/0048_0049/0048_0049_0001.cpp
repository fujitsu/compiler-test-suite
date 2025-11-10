#include <cstdio>

int operator ""_km (unsigned long long m)
{
  return 1000 * m;
}

void sub1()
{
  std::printf("%d\n", 3_km);
}
