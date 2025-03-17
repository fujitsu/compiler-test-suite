





#include <regex>
#include <cassert>

template <class CharT>
void
test()
{
    typedef std::regex_iterator<const CharT*> I;
    I i1;
    assert(i1 == I());
}

int main()
{
    test<char>();
    test<wchar_t>();
}
