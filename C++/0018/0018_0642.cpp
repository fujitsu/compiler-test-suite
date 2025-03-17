







#include <regex>
#include <cassert>

template <class CharT>
void
test()
{
    std::match_results<const CharT*> m;
    assert(m.size() == 0);
    assert(m.get_allocator() == std::allocator<std::sub_match<const CharT*> >());
    std::match_results<const CharT*> m1;
    m1 = m;
    std::match_results<const CharT*> m2(std::move(m1));
}

int main()
{
    test<char>();
    test<wchar_t>();
}
