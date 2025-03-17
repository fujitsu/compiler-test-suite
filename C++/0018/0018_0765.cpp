




#include <type_traits>

class A;

int main()
{
    std::is_constructible<int,A[]>::value;
}
