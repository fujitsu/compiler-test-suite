#include <type_traits>
#include <map>
#include <set>
#include <cassert>

int main()
{
    typedef std::map<int,char> m;
    m::node_type nt;
    assert(nt.empty() == true);

    typedef std::set<int> s;
    s se{{1},{2}};
    s::node_type nt1 = se.extract(1);
    assert(nt1.empty() == false);
}
