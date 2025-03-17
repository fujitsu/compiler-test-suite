#include <map>
#include <string>
#include <cassert>
#include <iostream>

int main()
{
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        
        std::map<int,std::string>::node_type nt = src.extract(1);
        
        std::map<int,std::string> dst{{2,"two"},{3,"three"}};
        assert(dst == src);
        assert(nt.empty()==false);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");

    }
    {
        std::map<std::string,std::string> src{{"1","one"},{"2","two"},{"3","three"}};
        std::map<std::string,std::string>::node_type nt = src.extract("1");
        std::map<std::string,std::string> dst{{"2","two"},{"3","three"}};
        assert(dst == src);
        assert(nt.empty()==false);
        assert(nt.key() == "1");
        assert(nt.mapped() == "one");
    }
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::map<int,std::string>::node_type nt = src.extract(4);
        
        std::map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"}};
        assert(nt.empty()==true);
        assert(dst == src);
    }
}
