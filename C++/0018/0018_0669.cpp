

#include <string>
#include <cassert>

int main() {
    static_assert(std::char_traits<char>::eq_int_type('a', 'a'), "");
    static_assert(std::char_traits<char>::eq_int_type('A', 'A'), "");
    static_assert(!std::char_traits<char>::eq_int_type('a', 'A'), "");
    static_assert(noexcept(std::char_traits<char>::eq_int_type('a', 'A')), "");
}
