




#include <type_traits>

struct A;

int main()
{
    std::is_nothrow_copy_constructible<A[]>::value;
}
