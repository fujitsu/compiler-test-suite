





#include <regex>
#include <locale>
#include <cassert>

#define LOCALE_en_US_UTF_8     "en_US.UTF-8"
int main()
{
    std::regex r;
    std::locale loc = r.imbue(std::locale(LOCALE_en_US_UTF_8));
    assert(loc.name() == "C");
    assert(r.getloc().name() == LOCALE_en_US_UTF_8);
    loc = r.imbue(std::locale("C"));
    assert(loc.name() == LOCALE_en_US_UTF_8);
    assert(r.getloc().name() == "C");
}
