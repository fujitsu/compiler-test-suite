





#define LOCALE_en_US_UTF_8     "en_US.UTF-8"
#include <regex>
#include <locale>
#include <cassert>

int main()
{
    {
        std::regex_traits<char> t;
        std::locale loc = t.imbue(std::locale(LOCALE_en_US_UTF_8));
        assert(loc.name() == "C");
        assert(t.getloc().name() == LOCALE_en_US_UTF_8);
    }
}
