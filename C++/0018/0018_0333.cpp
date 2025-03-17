





#include <random>
#include <cassert>

void
test1()
{
    for (int s = 0; s < 20; ++s)
    {
        typedef std::ranlux24 E;
        E e1(s);
        E e2;
        e2.seed(s);
        assert(e1 == e2);
    }
}

void
test2()
{
    for (int s = 0; s < 20; ++s)
    {
        typedef std::ranlux48 E;
        E e1(s);
        E e2;
        e2.seed(s);
        assert(e1 == e2);
    }
}

int main()
{
    test1();
    test2();
}
