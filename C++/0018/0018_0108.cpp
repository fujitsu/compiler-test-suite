

#include <deque>
#include <cassert>

int main() {
    std::deque<int> d1;
    d1.insert(d1.begin(), {1, 2, 3});
    assert(d1.size()== 3);
    assert(d1[0] == 1);
    assert(d1[1] == 2);
    assert(d1[2] == 3);
}
