


#include <stack>
#include <cassert>

int main() {
    std::stack<int> s1 ;
    std::stack<int> s2 ;
    s1.push(1);
    swap(s1, s2);
    assert(s1.size() == 0);
    assert(s2.size() == 1);
    assert(s2.top() == 1);
}
