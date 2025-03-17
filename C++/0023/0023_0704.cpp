#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        
        std::unordered_map<int,std::string>::node_type nt = src.extract(src.find(1));
           
        std::unordered_map<int,std::string> dst{{2,"two"},{3,"three"}};
        assert(src==dst);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");
    }
}
