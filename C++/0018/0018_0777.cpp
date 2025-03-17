





#include <type_traits>

class A;
int main()
{
    std::is_nothrow_constructible<int,A[]>::value;
}
