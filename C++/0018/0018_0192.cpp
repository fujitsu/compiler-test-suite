
#include <initializer_list>
#include <cassert>

int main() {
    std::initializer_list<int> i1 = {1, 2, 3};
    const int *b = std::begin(i1);
    assert(*b++ == 1);
    assert(i1.size() ==  3);
}
