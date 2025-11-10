#include <cstdio>

void sub1(int size)
{
  
  decltype(size) len = size;
  std::printf("%d\n", len);
}
