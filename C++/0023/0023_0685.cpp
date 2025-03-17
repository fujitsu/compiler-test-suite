#include <set>
#include <string>
#include <cassert>

int main()
{
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::multiset<std::string>::iterator i = src.begin();
        std::multiset<std::string>::iterator it = src.insert(i,(std::multiset<std::string>::node_type){});

        std::multiset<std::string> dst1{{"one"},{"two"},{"two"},{"three"}};
        assert(src == dst1);
        assert(it == src.end());
    }
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::multiset<std::string> src1{{"three"},{"four"}};
        std::multiset<std::string>::iterator i = src1.begin();
        std::multiset<std::string>::iterator it = src.insert(i,src1.extract("four"));
        std::multiset<std::string> dst2{{"one"},{"two"},{"two"},{"three"},{"four"}};
        assert(src == dst2);
        assert(*it == "four");

        std::multiset<std::string>::iterator it1 = src.insert(i,src1.extract("three"));
        std::multiset<std::string> dst3{{"one"},{"two"},{"two"},{"three"},{"three"},{"four"}};
        assert(dst3 == src);
        assert(src1.empty() == true);
        assert(*it1 == "three");
    }
}
