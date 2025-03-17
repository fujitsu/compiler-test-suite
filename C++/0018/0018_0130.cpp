

#include <stack>
#include <cassert>
 
int main()
{
    std::deque<int> d = {1, 2, 3, 4, 5};
    std::stack<int> q(d);
    assert(q.size() == 5);
    for (int i = 0; i < d.size(); ++i)
    {
        assert(q.top() == d[d.size() - i - 1]);
        q.pop();
    }
}
