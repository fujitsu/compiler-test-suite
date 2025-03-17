




#include <type_traits>

struct A;

int main()
{
    std::is_trivially_move_assignable<A[]>::value;
}
