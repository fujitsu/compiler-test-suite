#include <cassert>
#include <type_traits>
#include <map>

int main () 
{
    std::map<int,double> vv{{1,2.0}};
    std::map m(vv);
    assert(true == (std::is_same<std::map<int,double>, decltype(m)>::value));
}
