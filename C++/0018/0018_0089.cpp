

#include <array>
#include <cassert>

int main() {
    {
        std::array<int, 3> a = {1, 2, 3};
        static_assert(!a.empty(), "");
        static_assert(noexcept(a.empty()), "");
    }
    
    {
        std::array<int, 0> a = {};
        static_assert(a.empty(), "");
        static_assert(noexcept(a.empty()), "");
    }
}