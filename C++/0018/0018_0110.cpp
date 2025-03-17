

#include <deque>
#include <cassert>

int main() {
    std::deque<int> d1;
    d1.insert(d1.begin(), 10, 2);
    assert(d1.size() == 10);
    for(auto x : d1)
        assert(x == 2);
}
