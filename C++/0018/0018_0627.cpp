





#include <regex>
#include <cassert>

int main()
{
    std::regex r1(std::move("(a([bc]))"));
    std::regex r2;
    r2 = r1;
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);
}
