#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};

        std::multimap<int,std::string>::node_type nt = src.extract(src.find(1));

        std::multimap<int,std::string> dst{{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(nt.empty()==false);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");

        std::multimap<int,std::string>::node_type nt1 = src.extract(src.find(2));

        std::multimap<int,std::string> dst1{{2,"two"},{2,"two"},{3,"three"}};
        assert(dst1==src);
        assert(nt1.empty()==false);
        assert(nt1.key() == 2);
        assert(nt1.mapped() == "double two");
    }
}
