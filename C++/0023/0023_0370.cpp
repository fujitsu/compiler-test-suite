#include <cassert>
#include <vector>
#include <type_traits>

int main () 
{
    std::vector v{1};
    assert(v[0] == 1);
    assert(true == (std::is_same<std::vector<int>, decltype(v)>::value));

    std::vector v1{1.0};
    assert(v1[0] == 1.0);
    assert(true == (std::is_same<std::vector<double>, decltype(v1)>::value));
}
