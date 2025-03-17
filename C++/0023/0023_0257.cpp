#include <string>
#include <cassert>

namespace A
{
    inline std::string s;
    const inline std::string s1 = "123";
    volatile inline std::string s2 = "222";
}

int main()
{   
    A::s = "111";
    assert(A::s == "111");
    assert(A::s1 == "123");
}
