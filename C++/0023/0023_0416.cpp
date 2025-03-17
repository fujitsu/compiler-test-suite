#include <cassert>

int main()
{
   [[using CC:opt(1)]][[CC::debug]]typedef int T;
   T t = 1;
   assert(t == 1);
   [[using CC:opt(1)]][[CC::debug]]typedef int Q;
   Q q = 1;
   assert(q == 1);
}