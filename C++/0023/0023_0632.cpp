#include <cassert>

class C{public:int a;};
namespace A
{
    int i;
    C j;
    enum E{a,b};
    void fun(int){}
};

enum S{s,d};
int f()
{
    using A::i;
    using A::j;
    using A::fun;
    using A::E;
    using S::s;
    i = 1;
    return i;
}

int main()
{
    assert(f()==1);
}
