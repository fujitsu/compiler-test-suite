
int a = 1;
const int const_a = a;

char b = 2;
class C1 {
public:
  const char const_b;
  C1() : const_b(b){}
}c1obj;

long c = 3;
class C2 {
public:
  class C21 {
  public:
    const long const_c;
    C21() : const_c(c){}
  }c21obj;
}c2obj;

float d = 4.0F;
namespace N {
  class C3 {
  public:
    const float const_d;
    C3() : const_d(d){}
  }c3obj;
}
using namespace N;

#include <stdio.h>

int main()
{
  printf("ok\n");
}
