#include <cassert>
#include <typeinfo>

class C{public:int a;};
namespace A
{
    int i = 1;
}

namespace A1
{
   int f(){return 1;}
}
namespace A2
{
   C j;
}
namespace B
{
    using A::i,A1::f,A2::j;
}

int main()
{  
   assert(B::i==1);
   A::i = 2;
   assert(B::i==2);
   B::i = 3;
   assert(A::i==3);
}
