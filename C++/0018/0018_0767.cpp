




#include <type_traits>


struct A;

int main()
{
    std::is_copy_constructible<A[]>::value;
}
