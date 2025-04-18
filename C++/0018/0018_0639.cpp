





#include <regex>
#include <cassert>

int main()
{
    {
        typedef char CharT;
        typedef std::sub_match<const CharT*> SM;
        SM sm = SM();
        SM::string_type str = sm.str();
        assert(str.empty());
        const CharT s[] = {'1', '2', '3', 0};
        sm.first = s;
        sm.second = s + 3;
        sm.matched = true;
        str = sm.str();
        assert(str == std::string("123"));
    }
    {
        typedef wchar_t CharT;
        typedef std::sub_match<const CharT*> SM;
        SM sm = SM();
        SM::string_type str = sm.str();
        assert(str.empty());
        const CharT s[] = {'1', '2', '3', 0};
        sm.first = s;
        sm.second = s + 3;
        sm.matched = true;
        str = sm.str();
        assert(str == std::wstring(L"123"));
    }
}
