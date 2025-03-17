#include <string>
#include <cassert>

namespace A
{
    std::string s = "123";
    const std::string s1 = "345";
    volatile std::string s2 = "456";
}

int main()
{
    assert(A::s == "123");
    assert(A::s1 == "345");
}
