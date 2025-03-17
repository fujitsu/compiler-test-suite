#include <cassert>

class A
{
   public:
    [[using CC:opt(1)]]static const int mem = 1;
    [[CC::opt(1)]]static const int ne = 5;
};

int main()
{
   A a;
   assert(a.mem == 1);
   assert(a.ne == 5);
}