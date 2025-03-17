






#include <regex>
#include <cassert>

int main()
{
    std::regex r2;
    r2 = std::string("(a([bc]))");
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);
}
