





#include <regex>
#include <cassert>

template <class CharT>
void
test()
{
    std::match_results<const CharT*> m;
    assert(m.max_size() > 0);
}

int main()
{
    test<char>();
    test<wchar_t>();
}
