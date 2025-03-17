


#include <deque>
#include <cassert>

int main() {
    std::deque<int> d1;
    int a1[] = {1, 2, 3, 4, 5};
    d1.insert(d1.begin(),a1, a1+sizeof(a1)/sizeof(a1[0]));
    assert(std::equal(d1.begin(), d1.end(), a1));
}
