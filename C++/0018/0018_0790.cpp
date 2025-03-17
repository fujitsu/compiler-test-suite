





#include <type_traits>

class A;

int main()
{
    std::is_trivially_constructible<int,A[]>::value;
}
