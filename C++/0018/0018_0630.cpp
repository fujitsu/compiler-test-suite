





#include <regex>
#include <cassert>

int main()
{
    std::regex r2;
    r2 = {'(', 'a', '(', '[', 'b', 'c', ']', ')', ')'};
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);
}
