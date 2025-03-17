





#include <regex>
#include <cassert>

void
test1()
{
    std::match_results<const char*> m;
    const char s[] = "abcdefghijk";
    assert(m.ready() == false);
    std::regex_search(s, m, std::regex("cd((e)fg)hi"));
    assert(m.ready() == true);
}

void
test2()
{
    std::match_results<const char*> m;
    const char s[] = "abcdefghijk";
    assert(m.ready() == false);
    std::regex_search(s, m, std::regex("z"));
    assert(m.ready() == true);
}

int main()
{
    test1();
    test2();
}
