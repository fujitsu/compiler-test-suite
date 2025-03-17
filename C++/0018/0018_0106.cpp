

#include <array>
#include <cassert>

int main() {
    std::array<int,0> a = {};
    std::array<int,0> b = {};
    static_assert(noexcept(a.swap(b)) == noexcept(true), "");
}
