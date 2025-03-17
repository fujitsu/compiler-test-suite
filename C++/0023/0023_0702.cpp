#include <set>
#include <string>
#include <cassert>

int main()
{
    {
        std::set<std::string> src{{"one"},{"two"},{"three"}};
        
        std::set<std::string>::node_type nt = src.extract(src.find("one"));
        
        std::set<std::string> dst{{"two"},{"three"}};
        assert(dst == src);
        assert(nt.empty()==false);
        assert(nt.value() == "one");
    }
}
