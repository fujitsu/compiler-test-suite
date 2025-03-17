

#include <random>
#include <cassert>

template <class T>
void
test1()
{
    for (int s = 0; s < 20; ++s)
    {
        typedef std::linear_congruential_engine<T, 2, 3, 7> E;
        E e1(s);
        E e2;
        e2.seed(s);
        assert(e1 == e2);
    }
}

int main()
{
    test1<unsigned short>();
    test1<unsigned int>();
    test1<unsigned long>();
    test1<unsigned long long>();
}
