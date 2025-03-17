#include <cassert>

struct C{int a;};
namespace A
{
    int i;
    C j;
    void fun(int){}
};
int f()
{
    using A::i,A::i,A::fun; 
    using A::j,A::j,A::fun;
    i = 1;
    return i;
}
int main()
{
    assert(f()==1);
}



