

#include <array>
#include <cassert>

int main() {
    {
        std::array<int, 3> a = {1, 2, 3};
        static_assert(a.max_size() == 3, "");
        static_assert(noexcept(a.max_size()), "");
    }
    
    {
        std::array<int, 0> a = {};
        static_assert(a.max_size() == 0, "");
        static_assert(noexcept(a.max_size()), "");
    }
}