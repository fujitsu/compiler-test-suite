





#include <regex>
#include <cassert>

void
test()
{
    std::match_results<const char*> m;
    const char s[] = "abcdefghijk";
    assert(std::regex_search(s, m, std::regex("cd((e)fg)hi")));
    assert(m.length() == m[0].length());
    assert(m.length(0) == m[0].length());
    assert(m.length(1) == m[1].length());
    assert(m.length(2) == m[2].length());
    assert(m.length(3) == m[3].length());
    assert(m.length(4) == m[4].length());
}

int main()
{
    test();
}
