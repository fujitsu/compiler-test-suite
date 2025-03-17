#include <unordered_set>
#include <string>
#include <cassert>

int main()
{
    {
        std::unordered_multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::unordered_multiset<std::string>::iterator i = src.begin();
        std::unordered_multiset<std::string>::iterator it = src.insert(i,(std::unordered_multiset<std::string>::node_type){});

        std::unordered_multiset<std::string> dst1{{"one"},{"two"},{"two"},{"three"}};
        assert(src == dst1);
        assert(it == src.end());
    }
    {
        std::unordered_multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::unordered_multiset<std::string> src1{{"three"},{"four"}};
        std::unordered_multiset<std::string>::iterator i = src1.begin();
        std::unordered_multiset<std::string>::iterator it = src.insert(i,src1.extract("four"));
        std::unordered_multiset<std::string> dst2{{"one"},{"two"},{"two"},{"three"},{"four"}};
        assert(src == dst2);
        assert(*it == "four");

        std::unordered_multiset<std::string>::iterator it1 = src.insert(i,src1.extract("three"));
        assert(src1.empty() == true);
        assert(*it1 == "three");
    }
}
