




#include <type_traits>

struct A;

int main()
{
    std::is_nothrow_assignable<int,A[]>::value;
}
