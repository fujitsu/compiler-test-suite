#include <type_traits>
#include <map>
#include <set>

int main()
{
    typedef std::map<int,char> m;
    m::node_type nt;
    m ma{{1,'a'}};
    m::node_type nn({});

    typedef std::set<int> s;
    s::node_type nt1;
    s ss{{1}};
    m::node_type nn1({});
}
