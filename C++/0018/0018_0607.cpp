





#include <regex>
#include <cassert>

int main()
{
    {
        std::regex_traits<char> t;
        assert(t.translate('a') == 'a');
        assert(t.translate('B') == 'B');
        assert(t.translate('c') == 'c');
    }
    {
        std::regex_traits<wchar_t> t;
        assert(t.translate(L'a') == L'a');
        assert(t.translate(L'B') == L'B');
        assert(t.translate(L'c') == L'c');
    }
}
