




#include <type_traits>

struct A { };

struct B;

int main()
{
    std::is_assignable<B[], A[]>::value;
}
