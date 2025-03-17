




#include <type_traits>

struct A;

int main()
{
    std::is_nothrow_move_constructible<A[]>::value;
}
