#include <cstdio>
#include "000.hpp"

void B::foo()
{
  char str1[] = "testtest\
test";
  int v$al = 100;
  char str2[] = "ZZZ\eYYYY";
  std::printf("str1 = %s\n", str1);
  std::printf("v$al = %d\n", v$al);
  std::printf("str2 = %s\n", str2);
}
