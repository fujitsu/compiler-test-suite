




#include <type_traits>

union A;
int main()
{
    std::is_trivially_assignable<A[], int>::value;
}
