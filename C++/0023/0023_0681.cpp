#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
         std::multimap<int,std::string>:: iterator i = src.begin();
         std::multimap<int,std::string>:: iterator it = src.insert(i,(std::multimap<int,std::string>::node_type){});

        std::multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(it == src.end());
    }
    {
        std::multimap<int,std::string> src{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"}};
        std::multimap<int,std::string> src1{{1,"double one"},{4,"four"}};
         std::multimap<int,std::string>:: iterator i = src1.begin();
        std::multimap<int,std::string>:: iterator it = src.insert(i,src1.extract(4));
        
        std::multimap<int,std::string> dst{{1,"one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"},{4,"four"}};
        std::multimap<int,std::string> src2{{1,"double one"}};
        assert(src1 == src2);
        assert(dst == src);
        assert(it->first == 4);
        assert(it->second == "four");

        std::multimap<int,std::string>:: iterator it1 = src.insert(i,src.extract(1));
        std::multimap<int,std::string> dst1{{1,"one"},{1,"double one"},{2,"double two"},{2,"two"},{2,"two"},{3,"three"},{4,"four"}};
        assert(src.empty() == false);
        assert(it1->first == 1);
        assert(it1->second == "one");

    }
}
