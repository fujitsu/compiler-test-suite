#include <type_traits>
#include <set>
#include <cassert>

int main()
{
    typedef std::set<int> s;
    std::set<int> se{{1},{2}};
    s::node_type nt = se.extract(1);
    assert(nt.empty() == false);
    assert(nt.value() == 1);
}
