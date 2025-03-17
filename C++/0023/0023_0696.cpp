#include <type_traits>
#include <map>
#include <set>

int main()
{
    typedef std::map<int,char> m;
    m::node_type nn = {};

    typedef std::set<int> s;
    m::node_type nn1 = {};
}
