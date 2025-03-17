#include <cassert>
#include <tuple>
#include <type_traits>

int main () 
{
    std::pair p(2, 4.5);
    assert(p.first == 2);
    assert(p.second == 4.5);
    assert(true == (std::is_same<std::pair<int,double>, decltype(p)>::value));
}
