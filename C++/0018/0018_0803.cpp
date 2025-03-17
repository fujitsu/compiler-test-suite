
#include <utility>
#include <memory>
#include <cassert>

void test()
{
    typedef std::pair<std::unique_ptr<int>, short*> P;
    P p(std::unique_ptr<int>(new int(3)), nullptr);
    assert(*p.first == 3);
    assert(p.second == nullptr);
}

int main()
{
    test();
}
