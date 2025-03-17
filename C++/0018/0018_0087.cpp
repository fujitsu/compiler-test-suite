


#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::reference r1 = c.front();
        assert(r1 == 1);
        r1 = 4;
        assert(c.front() ==4);
    }
   
    {
        typedef std::array<int, 3> C;
        C c = {1, 2, 3};
        C::const_reference r1 = c.front();
        assert(r1 == 1);
    }

}

