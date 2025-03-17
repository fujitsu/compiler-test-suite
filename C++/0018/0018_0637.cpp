





#include <regex>
#include <cassert>

int main()
{
    {
        typedef char CharT;
        typedef std::sub_match<const CharT*> SM;
        SM sm;
        assert(sm.matched == false);
    }
    {
        typedef wchar_t CharT;
        typedef std::sub_match<const CharT*> SM;
        SM sm;
        assert(sm.matched == false);
    }
}
