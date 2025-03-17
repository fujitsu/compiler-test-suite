#include <cassert>
#include <list>
#include <type_traits>
#include <string>
int main () 
{
    std::list li{1.0,2.0};
    assert(true == (std::is_same<std::list<double>, decltype(li)>::value));

    std::list li1{"123","456"};
    assert(true == (std::is_same<std::list<const char *>, decltype(li1)>::value));
}
