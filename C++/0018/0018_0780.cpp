




#include <type_traits>

struct A{};

int main()
{
    std::is_nothrow_default_constructible<A>::value;
}
