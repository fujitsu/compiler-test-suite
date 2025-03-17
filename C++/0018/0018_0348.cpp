


#include <random>
#include <cassert>

void
test1()
{
    for (int s = 0; s < 20; ++s)
    {
        typedef std::knuth_b E;
        E e1(s);
        E e2;
        e2.seed(s);
        assert(e1 == e2);
    }
}

int main()
{
    test1();
}
