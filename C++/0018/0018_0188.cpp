




#include <initializer_list>
#include <cassert>

int main() {
    std::initializer_list<int> i1;
    assert(i1.size() == 0);
    assert(i1.begin() == i1.end());
}
