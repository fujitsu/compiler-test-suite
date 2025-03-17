#include <cassert>
#include <typeinfo>

struct Foo
{
    int i;
    char c;
    double d;
    Foo(int i1,char c1,double d1)
    {
        i = i1;
        c = c1;
        d = d1;
    }
    int fun()
    {
        return 1;
    }

};

int main()
{
    {
        Foo f = { 1, 'a', 2.3 };
        const auto [ i, c, d] = f;
        assert(i == 1);
        assert(c == 'a');
        assert(d == 2.3);
        assert(typeid(i) == typeid(const int)&&typeid(c) == typeid(const char)&&typeid(d) == typeid(const volatile double));
    }
    {
        Foo f { 1, 'a', 2.3 };
        const auto [ i, c, d] = f;
        assert(i == 1);
        assert(c == 'a');
        assert(d == 2.3);
        assert(typeid(i) == typeid(const int)&&typeid(c) == typeid(const char)&&typeid(d) == typeid(const volatile double));
    }
    return 0;
}
