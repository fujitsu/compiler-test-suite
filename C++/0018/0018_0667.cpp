

#include <string>
#include <cassert>

int main() {
    static_assert(std::char_traits<char>::eof() == EOF, "");
    static_assert(noexcept(std::char_traits<char>::eof()), "");
}
