#include <cassert>

class A
{
   public:
    [[using CC:opt(1)]][[CC::debug]]int mem = 1;
    [[CC::opt(1)]][[using CC:debug]]bool b = true;     
};

int main()
{
   A a;
   assert(a.mem == 1);
   assert(a.b == true);
}