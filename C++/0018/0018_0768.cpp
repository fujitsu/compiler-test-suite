




#include <type_traits>

class A{};

int main()
{
    std::is_default_constructible<A>::value;
}
