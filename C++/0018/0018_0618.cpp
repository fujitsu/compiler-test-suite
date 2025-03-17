





#include <regex>
#include <cassert>

template <class CharT>
void
test(const CharT* p, unsigned mc)
{
    std::basic_regex<CharT> r(p);
    assert(r.flags() == std::regex_constants::ECMAScript);
    assert(r.mark_count() == mc);
}

int main()
{
    test("\\(a\\)", 0);
    test("\\(a[bc]\\)", 0);
    test("\\(a\\([bc]\\)\\)", 0);
    test("(a([bc]))", 2);
}
