#include <cassert>
#include <list>
#include <type_traits>
#include <string>

int main () 
{
    std::list<std::string> li{"123","456"}; 
    assert(true == (std::is_same<std::list<std::string>, decltype(li)>::value));
}
