#include <unordered_map>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        
        std::unordered_map<int,std::string>:: iterator i = src.begin();

        std::unordered_map<int,std::string>::iterator  it = src.insert(i,(std::unordered_map<int,std::string>::node_type){});

        std::unordered_map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"}};
        assert(dst==src);
        assert(it  == src.end());
    }
    {
        std::unordered_map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::unordered_map<int,std::string> src1{{1,"one"},{4,"four"}};
        
        std::unordered_map<int,std::string>:: iterator i = src.begin();
        std::unordered_map<int,std::string>:: iterator it = src.insert(i,src1.extract(4));

        std::unordered_map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"},{4,"four"}};
        std::unordered_map<int,std::string> src2{{1,"one"}};
        assert(dst == src);
        assert(src1 == src2);
        assert(it->first == 4);
        assert(it->second == "four");
        
        std::unordered_map<int,std::string>:: iterator i1 = src.begin();
        std::unordered_map<int,std::string>:: iterator it1 = src.insert(i1,src1.extract(1));

        assert(src.empty() == false);
        assert(dst == src);
        assert(it1->first == 1);
        assert(it1->second == "one");
    }
}
