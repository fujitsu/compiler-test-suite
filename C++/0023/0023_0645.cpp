#include <cassert>

class C{public:int a;};
namespace A
{
    int i;
    C j;
    enum E{a,b};
    void fun(int){}
};

template <typename T>
int f()
{
    using A::i,A::j,A::fun,A::E;
    i = 1;
    return i;
}
int main()
{
    assert(f<int>()==1);
}



