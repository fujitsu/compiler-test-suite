




#include <type_traits>

struct A{};

int main()
{
    std::is_trivially_copy_assignable<A>::value;

}
