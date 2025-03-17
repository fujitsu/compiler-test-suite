#include <type_traits>
#include <map>
#include <cassert>

int main()
{
    typedef std::map<int,char> m;
    std::map<int,char> ma{{1,'1'},{2,'2'}};
    m::node_type nt = ma.extract(1);
    assert(nt.empty() == false);
    assert(nt.mapped() == '1');
}
