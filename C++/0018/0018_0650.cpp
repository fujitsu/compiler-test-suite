





#include <regex>
#include <cassert>

void
test()
{
    std::match_results<const char*> m;
    const char s[] = "abcdefghijk";
    assert(std::regex_search(s, m, std::regex("cd((e)fg)hi")));

    assert(m.suffix().first == s+9);
    assert(m.suffix().second == s+11);
    assert(m.suffix().matched == true);
}

int main()
{
    test();
}
