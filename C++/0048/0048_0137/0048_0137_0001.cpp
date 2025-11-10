#include <cstdio>
#include "000.hpp"

void Foo::func1(int * __restrict__ pval)
{
  *pval += 2;
}

void Foo::func2(int val) __restrict__
{
  if (val == 4) { std::puts("OK"); }
};
