




#include <type_traits>

struct B;

int main()
{
    std::is_move_constructible<B[]>::value;
}
