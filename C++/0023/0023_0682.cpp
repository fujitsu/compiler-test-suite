#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::multimap<int,std::string>:: iterator it = src.insert((std::multimap<int,std::string>::node_type){});

        std::multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(it == src.end());
    }
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::multimap<int,std::string> src1{{3,"3 three"}};

        std::multimap<int,std::string>:: iterator it = src.insert(src1.extract(3));
        
        std::multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"},{3,"3 three"}};
        assert(src1.empty() == true);
        assert(dst == src);
        assert(it->first == 3);
        assert(it->second == "3 three");
    }
}
