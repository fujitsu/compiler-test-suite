



#include <type_traits>

class A;

int main()
{
    std::is_copy_assignable<A[]>::value;
}
