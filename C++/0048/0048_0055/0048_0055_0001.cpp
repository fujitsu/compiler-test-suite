#include <cstdio>
#include "000.hpp"

struct B1
{
  typedef int ValueType;

  template <int N>
  int get() const { return N; }
};

void sub1()
{
  typename B1::ValueType val = B1().template get<3>();
  std::printf("%d\n", val);
}

class B2;

class ::B2 {};

void sub2()
{
  std::printf("%lu\n", sizeof(B2));
}

struct B3
{
  int m;
};

void sub3()
{
  std::printf("%lu\n", sizeof(B3::m));
}

extern int x[10];

int x[];

void sub4()
{
  std::printf("%d\n", sizeof(x));
}
