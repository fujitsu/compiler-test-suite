





#include <regex>
#include <cassert>

int main()
{
    {
        typedef char CharT;
        typedef std::sub_match<const CharT*> SM;
        SM sm = SM();
        assert(sm.length() == 0);
        const CharT s[] = {'1', '2', '3', 0};
        sm.first = s;
        sm.second = s + 3;
        sm.matched = true;
        assert(sm.length() == 3);
    }
    {
        typedef wchar_t CharT;
        typedef std::sub_match<const CharT*> SM;
        SM sm = SM();
        assert(sm.length() == 0);
        const CharT s[] = {'1', '2', '3', 0};
        sm.first = s;
        sm.second = s + 3;
        sm.matched = true;
        assert(sm.length() == 3);
    }
}
