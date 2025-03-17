





#include <regex>
#include <cassert>

int main()
{
    std::regex r2;
    r2.assign("(a([bc]))", 9, std::regex::extended);
    assert(r2.flags() == std::regex::extended);
    assert(r2.mark_count() == 2);
}
