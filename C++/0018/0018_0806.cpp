
#include <utility>
#include <memory>
#include <cassert>

void test()
{
    typedef std::pair<std::unique_ptr<int>, short> P;
    P p(std::unique_ptr<int>(new int(3)), 4);
    std::unique_ptr<int> ptr = std::get<0>(std::move(p));
    assert(*ptr == 3);
}

int main()
{
    test();
}
