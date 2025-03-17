

#include <string>
#include <cassert>

int main() {
    static_assert(std::char_traits<char>::lt('a', 'b'), "");
    static_assert(noexcept(std::char_traits<char>::lt('a', 'b')), "");
}

