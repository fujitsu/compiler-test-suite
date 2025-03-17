#include <cassert>
#include <typeinfo>
struct C{public:int a;};
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
    C c;
}
namespace B
{
    using A::i;
    using A::i;
    using A1::f;
    using A1::f;
    using A2::c;
    using A2::c;
}
int main()
{  
    assert(B::i==1);
    assert(B::f()==1);
    assert(typeid(B::c)==typeid(C));
}
