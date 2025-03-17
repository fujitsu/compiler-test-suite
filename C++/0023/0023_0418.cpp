#include <cassert>

int main()
{
   [[using CC:opt(1)]]int i = 1;
   assert(i == 1);
   [[using CC:opt(1)]]double d = 2.3;;
   assert(d == 2.3);
   [[CC::opt(1)]]bool b = true;
   assert(b == true);
   [[CC::debug]]double m = 3.56;;
   assert(m == 3.56);
}