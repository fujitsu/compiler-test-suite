





#include <regex>
#include <cassert>

void
test()
{
    std::match_results<const char*> m;
    const char s[] = "abcdefghijk";
    assert(std::regex_search(s, m, std::regex("cd((e)fg)hi")));

    assert(m.prefix().first == s);
    assert(m.prefix().second == s+2);
    assert(m.prefix().matched == true);
}

int main()
{
    test();
}
