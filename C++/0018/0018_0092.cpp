

#include <array>
#include <cassert>

int main() {
    {
        std::array<int, 3> a = {1, 2, 3};
        a.fill(4);
        for(auto i : a)
            assert(i == 4);
    }
        
    {
        std::array<int, 0> a = {};
        a.fill(4);
        for(auto i : a)
            assert(i == 0);
    }
}
