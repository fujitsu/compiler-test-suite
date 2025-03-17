#include <type_traits>
#include <map>
#include <set>
#include <cassert>

int main()
{
    typedef std::map<int,char> m;
    m::node_type nt;
    bool a =  (bool)nt;
    assert(a == false);

    typedef std::set<int> s;
    s se{{1},{2}};
    s::node_type nt1 = se.extract(1);
    bool b = (bool)nt1;
    assert(b == true);
}
