

#include <array>
#include <cassert>

int main() {
    {
        std::array<int, 3> a = {1, 2, 3};
        std::array<int, 3> b = {4, 5, 6};
        a.swap(b);
        assert(a[0] == 4);
        assert(a[1] == 5);
        assert(a[2] == 6);
        assert(b[0] == 1);
        assert(b[1] == 2);
        assert(b[2] == 3);
        assert(a.size() == 3);
        assert(b.size() == 3);
        static_assert(noexcept(a.swap(b)) == noexcept(swap(a, b)), "");
    }

    {
        std::array<int, 0> a = {};
        std::array<int, 0> b = {};
        a.swap(b);
        assert(a.size() == 0);
        assert(b.size() == 0);
    }

}
