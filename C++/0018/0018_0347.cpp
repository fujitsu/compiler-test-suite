











#include <random>
#include <sstream>
#include <cassert>

void
test1()
{
    typedef std::knuth_b E;
    E e1;
    e1.discard(100);
    std::ostringstream os;
    os << e1;
    std::istringstream is(os.str());
    E e2;
    is >> e2;
    assert(e1 == e2);
}

int main()
{
    test1();
}
