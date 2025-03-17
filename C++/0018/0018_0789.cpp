





#include <type_traits>

class A;

int main()
{
    std::is_trivially_constructible<A[]>::value;
}
