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
    C c;
}
namespace B
{
    using A::i,A::E,A::i,A1::f,A1::f,A2::c,A2::c;
    E a;
}

int main()
{  
   assert(B::i==1);
   assert(B::f()==1);
   assert(typeid(B::c)==typeid(C));
   assert(typeid(B::E)==typeid(A::E));
   assert(B::a==A::a);
}
