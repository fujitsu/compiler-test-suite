

#include <initializer_list>
#include <cassert>

int main() {
    std::initializer_list<int> l1;
    assert(l1.size() == 0);
}
