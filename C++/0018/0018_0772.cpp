




#include <type_traits>


struct A;

int main()
{
    std::is_move_assignable<A[]>::value;
}
