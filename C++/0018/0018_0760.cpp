



#include <type_traits>

class A;
int main()
{
    std::is_abstract<A[]>::value;
}
