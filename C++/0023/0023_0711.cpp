#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::unordered_multimap<int,std::string>:: iterator it = src.insert((std::unordered_multimap<int,std::string>::node_type){});

        std::unordered_multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(it == src.end());
    }
    {
        std::unordered_multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::unordered_multimap<int,std::string> src1{{3,"3 three"}};

        std::unordered_multimap<int,std::string>:: iterator it = src.insert(src1.extract(3));

        std::unordered_multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"},{3,"3 three"}};
        assert(src1.empty() == true);
        assert(dst == src);
        assert(it->first == 3);
        assert(it->second == "3 three");
    }
}
