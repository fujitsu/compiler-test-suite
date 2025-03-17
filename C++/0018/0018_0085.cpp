


#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::reference r1 = c.back();
        assert(r1 == 3);
        r1 = 4;
        assert(c.back() ==4);
    }
   
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::const_reference r1 = c.back();
        assert(r1 == 3);
    }

}

