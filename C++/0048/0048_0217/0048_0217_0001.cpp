#include <cstdio>
#include "000.hpp"

int B1::val = 0;

void B1::sub1()
{
  ++val;
  std::printf("B1::sub1: %d\n", val);
}

void sub1()
{
  B1::sub1();
}

void B2::sub2()
{
  std::printf("B2::sub2: %d\n", val);
}

void sub2()
{
  B2::sub2();
}

void B3::sub3() const
{
  ++val;
  std::printf("B3::sub3: %d\n", val);
}

void sub3()
{
  B3 b3;
  b3.sub3();
}
