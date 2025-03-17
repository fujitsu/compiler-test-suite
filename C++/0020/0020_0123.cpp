#include <type_traits>

struct A;

void test1()
{
    static_assert(!std::is_final<A[]>::value, "");
}

int main()
{
}
