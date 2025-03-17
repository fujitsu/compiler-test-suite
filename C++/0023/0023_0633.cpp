#include <cassert>

class C{public:int a;};
namespace A
{
    int i;
    C j;
    void fun(int){}
};
int f()
{
    using A::i;
    using A::i;
    using A::j;
    using A::j;
    using A::fun;
    using A::fun;
    
    i = 1;
    return i;
}

int main()
{
    assert(f()==1);
}
