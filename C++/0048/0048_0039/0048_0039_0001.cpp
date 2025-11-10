#include <cstdio>
#include <cstdint>

#include "000.hpp"

void sub1()
{
  std::intmax_t imax = 1;
  std::printf("%ld\n", imax);
}

void sub2()
{
  std::uintmax_t umax = 2;
  std::printf("%lu\n", umax);
}

void sub3()
{
  std::intptr_t iptr = 3;
  std::printf("%ld\n", iptr);
}

void sub4()
{
  std::uintptr_t uptr = 4;
  std::printf("%lu\n", uptr);
}
