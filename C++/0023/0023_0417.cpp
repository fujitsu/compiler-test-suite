#include <cassert>

int main()
{
   [[using CC:opt(1)]]int i = 1;
   assert(i == 1);
   [[CC::debug]]double d = 2.3;
   assert(d == 2.3);
}