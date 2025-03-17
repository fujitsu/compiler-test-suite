




#include <type_traits>

struct A;

int main()
{
    std::is_nothrow_copy_assignable<A[]>::value;
}
