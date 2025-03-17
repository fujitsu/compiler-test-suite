#include <cassert>
#include <vector>
#include <type_traits>

int main () 
{
    std::vector v{1,2.0};
    assert(v[0] == 1);
    assert(true == (std::is_same<std::vector<double>, decltype(v)>::value));

}
