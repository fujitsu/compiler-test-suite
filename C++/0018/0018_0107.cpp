

#include <array>
#include <cassert>

int main() {
    std::array<int,0> a = {};
    assert(a.size() == 0);
}

