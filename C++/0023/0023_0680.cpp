#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};

        std::multimap<int,std::string>::node_type nt = src.extract(1);

        std::multimap<int,std::string> dst{{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(nt.empty()==false);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");
    }
    {
        std::multimap<std::string,std::string> src{{"1","one"},{"2","double two"},{"2","two"},{"2","two"},{"3","three"}};

        std::multimap<std::string,std::string>::node_type nt = src.extract("2");
        std::multimap<std::string,std::string> dst{{"1","one"},{"2","two"},{"2","two"},{"3","three"}};
        assert(dst==src);
        assert(nt.empty()==false);
        assert(nt.key() == "2");
        assert(nt.mapped() == "double two");
    }
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"two"},{2,"two"},{3,"three"}};
        std::multimap<int,std::string>::node_type nt = src.extract(4);
        std::multimap<int,std::string> dst{{1,"one"},{2,"two"},{2,"two"},{3,"three"}};
        assert(nt.empty()==true);
        assert(dst == src);
    }
}
