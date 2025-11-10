#include <cstdio>
#include "000.hpp"

extern template char foo<char>(char val);
extern template short foo<short>(short val);
extern template int foo<int>(int val);
extern template long foo<long>(long val);

int main()
{
  char c = '0';
  short s = 1;
  int i = 2;
  long l = 3;
  
  std::printf("%d %d %d %d\n", foo(c), foo(s), foo(i), foo(l));
  return 0;
}
