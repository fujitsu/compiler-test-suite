




#include <type_traits>

class A;

int main()
{
    std::is_constructible<A[], int>::value;
}
