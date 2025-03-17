









#include <regex>
#include <type_traits>

int main()
{
    static_assert((std::is_same<std::regex_traits<char>::char_type, char>::value), "");
    static_assert((std::is_same<std::regex_traits<char>::string_type, std::string>::value), "");
    static_assert((std::is_same<std::regex_traits<char>::locale_type, std::locale>::value), "");
    static_assert((std::is_same<std::regex_traits<wchar_t>::char_type, wchar_t>::value), "");
    static_assert((std::is_same<std::regex_traits<wchar_t>::string_type, std::wstring>::value), "");
    static_assert((std::is_same<std::regex_traits<wchar_t>::locale_type, std::locale>::value), "");
}
