#include <cassert>

class C
{
    public:
    int a = 1;
};

class A
{
    public:
        int i;
        C c;
        A(int){ i = 1;}
        int fun()
        {
            return 1;
        }
};

class B:A
{
    public :
    using A::i,A::c,A::A,A::fun;
};

int main()
{
    B  b(1);
    assert(b.i == 1);
    assert(b.fun() == 1);
    assert(b.c.a == 1);
}
