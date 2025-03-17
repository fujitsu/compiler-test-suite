#include <unordered_set>
#include <string>
#include <cassert>

int main()
{
    {  
        std::unordered_set<std::string> src{{"one"},{"two"},{"three"}};
        std::unordered_set<std::string>::iterator i = src.begin();
        std::unordered_set<std::string>::iterator it = src.insert(i,(std::unordered_set<std::string>::node_type){});


        std::unordered_set<std::string> dst{{"one"},{"two"},{"three"}};
        assert(dst == src);
        assert(it == src.end());
    }
    {
        std::unordered_set<std::string> src{{"one"},{"two"},{"three"}};
        std::unordered_set<std::string> src1{{"four"}};
        std::unordered_set<std::string>::iterator i = src.begin();
        std::unordered_set<std::string>::iterator it = src.insert(i,src1.extract("four"));

        std::unordered_set<std::string> dst{{"one"},{"two"},{"three"},{"four"}};
        assert(src1.empty() == true);
        assert(dst == src);
        assert(*it == "four");

        std::unordered_set<std::string> src2{{"one"},{"two"}};
        std::unordered_set<std::string>::iterator i1 = src2.begin();
        std::unordered_set<std::string>::iterator it1  = src.insert(i1,src2.extract("one"));
        assert(dst == src);
        assert(*it1 == "one");
    }
}
