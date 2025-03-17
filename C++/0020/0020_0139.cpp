#include <typeindex>
#include <cassert>

void test()
{
    std::type_index ti = typeid(int);
    static_assert(noexcept(ti.name()), "");
}

int main()
{
    test();
    return 0;
}
