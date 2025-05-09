





#include <regex>
#include <cassert>

int main()
{
    assert(std::regex_traits<char>::length("") == 0);
    assert(std::regex_traits<char>::length("1") == 1);
    assert(std::regex_traits<char>::length("12") == 2);
    assert(std::regex_traits<char>::length("123") == 3);

    assert(std::regex_traits<wchar_t>::length(L"") == 0);
    assert(std::regex_traits<wchar_t>::length(L"1") == 1);
    assert(std::regex_traits<wchar_t>::length(L"12") == 2);
    assert(std::regex_traits<wchar_t>::length(L"123") == 3);
}
