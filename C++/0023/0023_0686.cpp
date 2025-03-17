#include <set>
#include <string>
#include <cassert>

int main()
{
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::multiset<std::string>::iterator it = src.insert((std::multiset<std::string>::node_type){});

        std::multiset<std::string> dst1{{"one"},{"two"},{"two"},{"three"}};
        assert(src == dst1);
        assert(it == src.end());
    }
    {
        std::multiset<std::string> src{{"one"},{"two"},{"two"},{"three"}};
        std::multiset<std::string> src1{{"three"}};
        std::multiset<std::string>::iterator it = src.insert(src1.extract("three"));
        std::multiset<std::string> dst2{{"one"},{"two"},{"two"},{"three"},{"three"}};
        assert(src == dst2);
        assert(src1.empty()==true);
        assert(*it == "three");
    }
}
