

#include <string>
#include <cassert>

int main()
{
    static_assert(std::char_traits<char>::to_char_type('a') == 'a', "");
    static_assert(std::char_traits<char>::to_char_type('A') == 'A', "");
    static_assert(std::char_traits<char>::to_char_type(0) == 0, "");
}
