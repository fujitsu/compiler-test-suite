#include <cassert>
#include <typeinfo>

class C{public:int a;};
namespace A
{
    int i = 1;
    enum E{a,b};
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
    using A::i,A::E::a,A::E,A1::f,A2::j;
    E c;
}

int main()
{  
   assert(B::i==1);
   assert(B::f()==1);
   assert(typeid(B::E)==typeid(A::E));
   assert(B::a==0);
   assert(B::c==0);
   assert(typeid(B::j)==typeid(C));
}
