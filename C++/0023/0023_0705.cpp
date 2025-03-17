#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};

        std::unordered_map<int,std::string>::node_type nt = src.extract(1);

        std::unordered_map<int,std::string> dst{{2,"two"},{3,"three"}};
        assert(src==dst);
        assert(nt.empty() == false);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");
    }
    {
        std::unordered_map<std::string,std::string> src{{"1","one"},{"2","two"},{"3","three"}};
        std::unordered_map<std::string,std::string>::node_type nt = src.extract("1");
        std::unordered_map<std::string,std::string> dst{{"2","two"},{"3","three"}};
        assert(dst == src);
        assert(nt.empty()==false);
        assert(nt.key() == "1");
        assert(nt.mapped() == "one");
    }
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::unordered_map<int,std::string>::node_type nt = src.extract(4);

        std::unordered_map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"}};
        assert(nt.empty()==true);
        assert(dst == src);
    }
}
