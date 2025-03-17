#include <cassert>
#include <vector>
#include <type_traits>

int main () 
{
    std::vector<int> v{2};
    assert(v[0] == 2);
    assert(true == (std::is_same<std::vector<int>, decltype(v)>::value));
    
    std::vector<double> v1{2};
    assert(v1[0] == 2);
    assert(true == (std::is_same<std::vector<double>, decltype(v1)>::value));
}
