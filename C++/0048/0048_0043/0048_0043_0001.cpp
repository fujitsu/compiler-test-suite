#include <cstdio>



static constexpr int constexpr_func(int x)
{
  return x + 2;
}

void sub1()
{
  
  constexpr int val = constexpr_func(3);
  std::printf("%d\n", val);
}
