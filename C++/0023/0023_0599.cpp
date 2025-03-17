#include <cassert>

int main()
{
  [[unknown_attr]]typedef int INT;
  INT i = 1;
  assert(i == 1);

  [[using CC:unknown_attr]]typedef double DBL;
  DBL d = 1.0;
  assert(d == 1.0);
}
