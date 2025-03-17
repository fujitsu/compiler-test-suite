#include <typeindex>
#include <cassert>

void test()
{
    std::type_index ti = typeid(int);
    static_assert(noexcept(ti.hash_code()), "");
}

int main()
{
    test();
    return 0;
}
