#include <type_traits>
#include <map>
#include <set>

int main()
{
    typedef std::map<int,char> m;
    m::node_type nt();

    typedef std::set<int> s;
    s::node_type nt1();
}
