

#include <string>
#include <cassert>

int main() {
    static_assert(std::char_traits<char>::not_eof('a') == 'a', "");
    static_assert(std::char_traits<char>::not_eof('A') == 'A', "");
    static_assert(noexcept(std::char_traits<char>::not_eof('a')), "");
    static_assert(noexcept(std::char_traits<char>::not_eof('A')), "");
}
