
#include <initializer_list>
#include <cassert>

int main() {
    std::initializer_list<int> i1 = {1, 2, 3};
    const int *b = std::begin(i1);
    const int *e = std::end(i1);
    assert(i1.size() ==  3);
    assert((e - b == 3));
}
