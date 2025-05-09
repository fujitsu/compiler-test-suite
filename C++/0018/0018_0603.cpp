





#include <regex>
#include <cassert>
#define LOCALE_en_US_UTF_8     "en_US.UTF-8"

int main()
{
    {
        std::regex_traits<char> t1;
        assert(t1.getloc().name() == "C");
        std::regex_traits<wchar_t> t2;
        assert(t2.getloc().name() == "C");
    }
    {
        std::locale::global(std::locale(LOCALE_en_US_UTF_8));
        std::regex_traits<char> t1;
        assert(t1.getloc().name() == LOCALE_en_US_UTF_8);
        std::regex_traits<wchar_t> t2;
        assert(t2.getloc().name() == LOCALE_en_US_UTF_8);
    }
}

