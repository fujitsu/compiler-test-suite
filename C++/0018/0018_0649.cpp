





#include <regex>
#include <cassert>

void
test()
{
    std::match_results<const char*> m;
    const char s[] = "abcdefghijk";
    assert(std::regex_search(s, m, std::regex("cd((e)fg)hi")));
    assert(m.str() == std::string(m[0]));
    assert(m.str(0) == std::string(m[0]));
    assert(m.str(1) == std::string(m[1]));
    assert(m.str(2) == std::string(m[2]));
    assert(m.str(3) == std::string(m[3]));
    assert(m.str(4) == std::string(m[4]));
}

int main()
{
    test();
}
