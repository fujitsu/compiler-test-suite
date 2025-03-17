#include <cassert>

class C{public:int a;};
class A
{
    public:
        int i;
        C j;
        A(int)
        {
            i = 1;
            j.a = 1;
        }
        int fun()
        {
            return 1;
        }
};
class B:A
{
    public :
        using A::i;
        using A::j;
        using A::A;
        using A::fun;
};

int main()
{
    B  b(1);
    assert(b.i == 1);
    assert(b.j.a == 1);
    assert(b.fun() == 1);
}
