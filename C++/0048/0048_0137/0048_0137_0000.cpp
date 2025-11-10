#include "000.hpp"

int main()
{
  Foo foo;
  int val = 2;

  foo.func1(&val);
  foo.func2(val);

  return 0;
}
