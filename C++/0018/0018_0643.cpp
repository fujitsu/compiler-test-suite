






#include <regex>
#include <cassert>

template <class CharT>
void
test()
{
    std::match_results<const CharT*> m;
    assert(m.empty());
    assert(m.size() == 0);
    const char s[] = "abcdefghijk";
    assert(std::regex_search(s, m, std::regex("cd((e)fg)hi")));
    assert(!m.empty());
    assert(m.size() == 3);
}

int main()
{
    test<char>();
}
