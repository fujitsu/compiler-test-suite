


#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        int *p = c.data();
        assert(p[0] == 1);
        assert(p[1] == 2);
        assert(p[2] == 3);
        static_assert(noexcept(c.data()), "");
    }
    
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        const int *p = c.data();
        assert(p[0] == 1);
        assert(p[1] == 2);
        assert(p[2] == 3);
        static_assert(noexcept(c.data()), "");
    }

}
