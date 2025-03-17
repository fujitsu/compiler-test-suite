#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        
        std::map<int,std::string>::node_type nt = src.extract(src.find(1));
        
        std::map<int,std::string> dst{{2,"two"},{3,"three"}};
        assert(dst == src);
        assert(nt.empty()==false);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");

    }
}
