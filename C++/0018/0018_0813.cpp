
#include <utility>
#include <cassert>
#include <memory>

void test()
{
    int i = 11, j = 22;
    std::swap(i, j);
    assert(i == 22);
    assert(j == 11);
}

void test1()
{
    std::unique_ptr<int> i(new int(11));
    std::unique_ptr<int> j(new int(22));
    std::swap(i, j);
    assert(*i == 22);
    assert(*j == 11);
}

int main()
{
    test();
    test1();
}