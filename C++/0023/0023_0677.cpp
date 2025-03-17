#include <map>
#include <string>
#include <cassert>

int main()
{
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}}; 
        std::map<int,std::string>:: iterator i = src.begin();
        std::map<int,std::string>:: iterator it = src.insert(i,(std::map<int,std::string>::node_type){});
        
        std::map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"}};
        assert(dst == src);
        assert(it == src.end());
    }
    {
        std::map<int,std::string> src{{1,"one"},{2,"two"},{3,"three"}};
        std::map<int,std::string> src1{{1,"one"},{4,"four"}};
        std::map<int,std::string>:: iterator i = src1.begin();
        std::map<int,std::string>:: iterator it = src.insert(i,src1.extract(4));
        
        std::map<int,std::string> dst{{1,"one"},{2,"two"},{3,"three"},{4,"four"}};
        std::map<int,std::string> src2{{1,"one"}};
        assert(dst == src);
        assert(src1 == src2);
        assert(it->first == 4);
        assert(it->second == "four");

        std::map<int,std::string>:: iterator i1 = src1.begin();
        std::map<int,std::string>:: iterator it1 = src.insert(i1++,src1.extract(1));
        
        assert(src.empty() == false);
        assert(dst == src);
        assert(it1->first == 1);
        assert(it1->second == "one");
    }
}
