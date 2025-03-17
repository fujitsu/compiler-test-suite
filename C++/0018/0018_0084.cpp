


#include <array>
#include <cassert>

int main() {
    {
        typedef std::array<int,3> C;
        C c = {1, 2, 3};
        C::reference r1 = c.at(0);
        assert(r1 == 1);
        r1 = 4;
        assert(c[0] == 4);
        C:: reference r2 = c.at(1);
        assert(r2 == 2);
        r2 = 5;
        assert(c[1] == 5);
        C::reference r3 = c.at(2);
        assert(r3 == 3);
        r3 = 6;
        assert(c[2] == 6);
    }
    {
        typedef std::array<int,3> C;
        C c = {1, 2, 3};
        C::const_reference r1 = c.at(0);
        assert(r1 == 1);
        
        C::const_reference r2 = c.at(1);
        assert(r2 == 2);
    
        C::const_reference r3 = c.at(2);
        assert(r3 == 3);
    }
}

