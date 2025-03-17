






#include <regex>
#include <cassert>

int main()
{
    std::regex r1("(a([bc]))");
    std::regex r2;
    swap(r2, r1);
    assert(r1.flags() == std::regex::ECMAScript);
    assert(r1.mark_count() == 0);
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);
}
