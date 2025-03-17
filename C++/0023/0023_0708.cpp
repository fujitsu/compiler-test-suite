#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};

        std::unordered_multimap<int,std::string>::node_type nt = src.extract(src.find(1));

        std::unordered_multimap<int,std::string> dst{{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(nt.empty()==false);
        assert(nt.key() == 1);
        assert(nt.mapped() == "one");

        std::unordered_multimap<int,std::string>::node_type nt1 = src.extract(src.find(3));

        assert(nt1.empty()==false);
        assert(nt1.key() == 3);
        assert(nt1.mapped() == "three");
    }
}
