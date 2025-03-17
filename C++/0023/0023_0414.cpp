#include <cassert>

class A
{
   public:
    [[using CC:opt(1)]][[CC::debug]]static const int mem = 1;
    [[CC::opt(1)]][[using CC:debug]]static const int n = 8;
};

int main()
{
   A a;
   assert(a.mem == 1);
   assert(a.n == 8);
}