


#include <random>
#include <cassert>

void
test1()
{
    typedef std::knuth_b E;
    E e1;
    e1();
    E e2 = e1;
    assert(e1 == e2);
    assert(e1() == e2());
    E::result_type k = e1();
    assert(e1 != e2);
    assert(e2() == k);
    assert(e1 == e2);
}

int main()
{
    test1();
}
