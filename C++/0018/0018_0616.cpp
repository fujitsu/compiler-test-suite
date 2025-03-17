







#include <regex>
#include <cassert>

int main()
{
    std::regex r2;
    r2.assign({'(', 'a', '(', '[', 'b', 'c', ']', ')', ')'});
    assert(r2.flags() == std::regex::ECMAScript);
    assert(r2.mark_count() == 2);

    r2.assign({'(', 'a', '(', '[', 'b', 'c', ']', ')', ')'}, std::regex::extended);
    assert(r2.flags() == std::regex::extended);
    assert(r2.mark_count() == 2);
}
