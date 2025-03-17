#include <cassert>
#include <type_traits>
#include <set>
#include <string>

int main () 
{
    std::set<int> vv{1,2,3};
    std::set<int> m(vv);
    assert(true == (std::is_same<std::set<int>, decltype(m)>::value));

    std::set<std::string> vv1{"123","456","789"};
    std::set<std::string> m1(vv1);
    assert(true == (std::is_same<std::set<std::string>, decltype(m1)>::value));
}
