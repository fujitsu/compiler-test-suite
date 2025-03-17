#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::unordered_multimap<int,std::string>:: iterator i = src.begin();
        std::unordered_multimap<int,std::string>:: iterator it = src.insert(i,(std::unordered_multimap<int,std::string>::node_type){});

        std::unordered_multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(it == src.end());
    }
    {
        std::unordered_multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::unordered_multimap<int,std::string> src1{{1,"double one"},{4,"four"}};
        std::unordered_multimap<int,std::string>:: iterator i = src1.begin();
        std::unordered_multimap<int,std::string>:: iterator it = src.insert(i,src1.extract(4));

        std::unordered_multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"},{4,"four"}};
        assert(it->first == 4);
        assert(it->second == "four");

        std::unordered_multimap<int,std::string>:: iterator it1 = src.insert(i,src.extract(1));
        std::unordered_multimap<int,std::string> dst1{{1,"one"},{1,"double one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"},{4,"four"}};
        assert(src.empty() == false);
        assert(it1->first == 1);
        assert(it1->second == "one");
    }
}
