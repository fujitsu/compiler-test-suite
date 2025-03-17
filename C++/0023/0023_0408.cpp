#include <cassert>

class A
{
   public:
    [[using CC:opt(1)]]int mem = 1;
    [[CC::opt(1)]]int v = 2;
};

int main()
{
   A a;
   assert(a.mem == 1);
   assert(a.v == 2);
}